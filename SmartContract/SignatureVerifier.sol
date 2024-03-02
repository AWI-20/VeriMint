// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract SignatureVerifier {
    function verifySignature(
        address signer, // 签名地址
        bytes32 message, // 已经被签名的消息哈希值 可转化 提供签名与地址的验证
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public pure returns (bool) {
        // 通过ECDSA验证签名
        bytes32 hash = keccak256(
            abi.encodePacked("\x19Ethereum Signed Message:\n32", message)
        );
        address recoveredSigner = ecrecover(hash, v, r, s);

        // 检查签名是否匹配提供的地址
        return (recoveredSigner == signer);
    }
}
