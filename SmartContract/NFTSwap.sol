// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

// import "./VeriMint.sol";

contract NFTSwap is IERC721Receiver {
    event List(
        address indexed seller,
        address indexed nftAddr,
        uint256 indexed tokenId,
        uint256 price
    );
    event Purchase(
        address indexed buyer,
        address indexed nftAddr,
        uint256 indexed tokenId,
        uint256 price
    );
    event RevokeBuyer(
        address indexed seller,
        address indexed nftAddr,
        uint256 indexed tokenId
    );

    event RevokeSeller(
        address indexed seller,
        address indexed nftAddr,
        uint256 indexed tokenId
    );
    event Update(
        address indexed seller,
        address indexed nftAddr,
        uint256 indexed tokenId,
        uint256 newPrice
    );

    // 定义order结构体
    struct Order {
        address buyer;
        address owner;
        uint256 price;
        string signature;
        uint256 startTime;
        bool isPurchased;
    }

    uint256 delay;
    // NFT Order映射
    mapping(address => mapping(uint256 => Order)) public nftList;
    mapping(address => uint256) public balance;
    mapping(address => uint256) public withdrawLock;

    fallback() external payable {}

    receive() external payable {}

    constructor(uint256 _delay) {
        delay = _delay;
    }

    // 挂单: 卖家上架NFT，合约地址为_nftAddr，tokenId为_tokenId，价格_price为以太坊（单位是wei）
    function list(address _nftAddr, uint256 _tokenId, uint256 _price) public {
        IERC721 _nft = IERC721(_nftAddr); // 声明IERC721接口合约变量
        require(_nft.getApproved(_tokenId) == address(this), "Need Approval"); // 合约得到授权
        require(_price > 0); // 价格大于0

        Order storage _order = nftList[_nftAddr][_tokenId]; //设置NF持有人和价格
        _order.owner = msg.sender;
        _order.price = _price;
        // 将NFT转账到合约
        _nft.safeTransferFrom(msg.sender, address(this), _tokenId);

        // 释放List事件
        emit List(msg.sender, _nftAddr, _tokenId, _price);
    }

    // 购买: 买家购买NFT，合约为_nftAddr，tokenId为_tokenId，调用函数时要附带ETH
    function purchase(
        address _nftAddr,
        uint256 _tokenId,
        string memory signature
    ) public payable {
        Order storage _order = nftList[_nftAddr][_tokenId]; // 取得Order
        require(_order.price > 0, "Invalid Price"); // NFT价格大于0
        require(block.timestamp > _order.startTime + delay, "Invalid Time"); // 订单处于有效期
        require(!_order.isPurchased, "NFT already purchased"); // 确保NFT未被购买
        require(msg.value >= _order.price, "Increase price"); // 购买价格大于标价
        // 声明IERC721接口合约变量
        IERC721 _nft = IERC721(_nftAddr);
        require(_nft.ownerOf(_tokenId) == address(this), "Invalid Order"); // NFT在合约中
        _order.buyer = msg.sender;
        _order.isPurchased = true;
        _order.signature = signature;
        _order.startTime = block.timestamp;
        balance[msg.sender] += msg.value;
        withdrawLock[msg.sender] += msg.value;
        // 释放Purchase事件
        emit Purchase(msg.sender, _nftAddr, _tokenId, _order.price);
    }

    // 卖家处理交易
    function process(
        address _nftAddr,
        uint256 _tokenId,
        string memory content,
        uint[2] calldata _pA,
        uint[2][2] calldata _pB,
        uint[2] calldata _pC,
        uint[1] calldata _pubSignals,
        address veriAddress
    ) public {
        Order storage _order = nftList[_nftAddr][_tokenId]; // 取得Order
        require(block.timestamp < _order.startTime + delay, "Invalid Time"); // 订单处于有效期
        require(_order.owner == msg.sender, "Not The Owner"); // 确保是NFT的owner
        // 进行内容验证
        // ZK _encryptedContent
        (bool success, bytes memory data) = veriAddress.call(
            abi.encodeWithSignature(
                "verifyProof(uint[2], uint[2][2], uint[2], uint[1])",
                _pA,
                _pB,
                _pC,
                _pubSignals
            )
        );
        bool sameContent = abi.decode(data, (bool));
        require(sameContent, "The Content is Not Same");
        IERC721 _nft = IERC721(_nftAddr);
        require(_nft.ownerOf(_tokenId) == address(this), "Invalid Order"); // NFT在合约中
        // 验证通过 将NFT转给买家
        _nft.safeTransferFrom(address(this), _order.buyer, _tokenId);
        // 将ETH转给卖家
        balance[_order.buyer] -= _order.price;
        withdrawLock[msg.sender] -= _order.price;
        payable(_order.owner).transfer(_order.price);
        delete nftList[_nftAddr][_tokenId]; // 删除order
    }

    // 撤单： 买家取消购买
    function revokeBuyer(address _nftAddr, uint256 _tokenId) public {
        Order storage _order = nftList[_nftAddr][_tokenId]; // 取得Order
        require(block.timestamp < _order.startTime + delay, "Invalid Time"); // 订单处于有效期
        require(_order.buyer == msg.sender, "Not Buyer"); // 必须由买家发起
        _order.buyer = address(0);
        _order.signature = "";
        _order.isPurchased = false;
        _order.startTime = 0;
        // 释放Revoke事件
        withdrawLock[msg.sender] -= _order.price;
        emit RevokeBuyer(msg.sender, _nftAddr, _tokenId);
    }

    // 撤单： 卖家取消挂单
    function revokeSeller(address _nftAddr, uint256 _tokenId) public {
        Order storage _order = nftList[_nftAddr][_tokenId]; // 取得Order
        require(_order.owner == msg.sender, "Not Owner"); // 必须由卖家发起
        require(!_order.isPurchased, "NFT already purchased"); // 确保NFT未被购买
        require(block.timestamp > _order.startTime + delay, "Invalid Time"); // 订单处于无效期
        // 声明IERC721接口合约变量
        IERC721 _nft = IERC721(_nftAddr);
        require(_nft.ownerOf(_tokenId) == address(this), "Invalid Order"); // NFT在合约中

        // 将NFT转给卖家
        _nft.safeTransferFrom(address(this), msg.sender, _tokenId);
        delete nftList[_nftAddr][_tokenId]; // 删除order

        // 释放Revoke事件
        emit RevokeSeller(msg.sender, _nftAddr, _tokenId);
    }

    // 调整价格: 卖家调整挂单价格
    function update(
        address _nftAddr,
        uint256 _tokenId,
        uint256 _newPrice
    ) public {
        require(_newPrice > 0, "Invalid Price"); // NFT价格大于0
        Order storage _order = nftList[_nftAddr][_tokenId]; // 取得Order
        require(_order.owner == msg.sender, "Not Owner"); // 必须由持有人发起
        require(!_order.isPurchased, "NFT already purchased"); // 确保NFT未被购买
        // 声明IERC721接口合约变量
        IERC721 _nft = IERC721(_nftAddr);
        require(_nft.ownerOf(_tokenId) == address(this), "Invalid Order"); // NFT在合约中

        // 调整NFT价格
        _order.price = _newPrice;

        // 释放Update事件
        emit Update(msg.sender, _nftAddr, _tokenId, _newPrice);
    }

    // 实现{IERC721Receiver}的onERC721Received，能够接收ERC721代币
    function onERC721Received(
        address operator,
        address from,
        uint tokenId,
        bytes calldata data
    ) external override returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

    function withDraw(uint256 money) public {
        require(balance[msg.sender] > 0);
        require(balance[msg.sender] - withdrawLock[msg.sender] >= money);
        payable(msg.sender).transfer(money);
    }
}
