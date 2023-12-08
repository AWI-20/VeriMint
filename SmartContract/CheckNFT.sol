// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;
import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev 获得 NFT 的 tokenURI => 获取 zk 证明
contract GetNFT {
    error DelegatecallFailed();

    constructor() {}

    // 获取 NFT 的 tokenURI(metadata)
    // NFT 由用户提供, 用于获得 zkHash
    function getTokenURI(
        address contractAddress,
        uint256 tokenId
    ) public payable returns (string memory) {
        string memory tokenURI;
        // 获取tokenId对应的metadata
        tokenURI = ERC721(contractAddress).tokenURI(tokenId);
        (bool success, bytes memory data) = contractAddress.call(
            abi.encodeWithSignature("tokenURI(uint256)", tokenId)
        );
        if (!success) revert DelegatecallFailed();
        return abi.decode(data, (string));
    }
}
