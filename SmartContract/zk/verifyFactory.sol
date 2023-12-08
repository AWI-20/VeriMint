// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

import "./verifier.sol";

contract verifyFactory {
    event verifyDeployed(uint256 tokenId, address verifyAddress);

    mapping(uint256 => address) public deployedContractAddress;

    function deployVerify(
        uint256 tokenId,
        uint256[18] memory _data
    ) public returns (address) {
        address verifyAddress = address(new Groth16Verifier(_data));
        deployedContractAddress[tokenId] = verifyAddress;
        emit verifyDeployed(tokenId, verifyAddress);
        return verifyAddress;
    }

    function VerifyContract(
        uint[2] calldata _pA,
        uint[2][2] calldata _pB,
        uint[2] calldata _pC,
        uint[1] calldata _pubSignals,
        address gvAdress
    ) public view returns (bool) {
        Groth16Verifier GV = Groth16Verifier(gvAdress);
        return GV.verifyProof(_pA, _pB, _pC, _pubSignals);
    }
}
