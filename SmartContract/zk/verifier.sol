// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev 修改生成的verifier 使变量以前端传参的形式接收
contract Groth16Verifier {
    // Scalar field size
    uint256 constant r =
        21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q =
        21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 alphax;
    uint256 alphay;
    uint256 betax1;
    uint256 betax2;
    uint256 betay1;
    uint256 betay2;
    uint256 gammax1;
    uint256 gammax2;
    uint256 gammay1;
    uint256 gammay2;
    uint256 deltax1;
    uint256 deltax2;
    uint256 deltay1;
    uint256 deltay2;

    uint256 IC0x;
    uint256 IC0y;

    uint256 IC1x;
    uint256 IC1y;
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    constructor(uint256[18] memory _data) {
        alphax = _data[0];
        alphay = _data[1];
        betax1 = _data[2];
        betax2 = _data[3];
        betay1 = _data[4];
        betay2 = _data[5];
        gammax1 = _data[6];
        gammax2 = _data[7];
        gammay1 = _data[8];
        gammay2 = _data[9];
        deltax1 = _data[10];
        deltax2 = _data[11];
        deltay1 = _data[12];
        deltay2 = _data[13];
        IC0x = _data[14];
        IC0y = _data[15];
        IC1x = _data[16];
        IC1y = _data[17];
    }

    function verifyProof(
        uint[2] calldata _pA,
        uint[2][2] calldata _pB,
        uint[2] calldata _pC,
        uint[1] calldata _pubSignals
    ) public view returns (bool) {
        assembly {
            function checkField(v) {
                if iszero(lt(v, q)) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            // G1 function to multiply a G1 value(x,y) to value in an address
            function g1_mulAccC(pR, x, y, s) {
                let success
                let mIn := mload(0x40)
                mstore(mIn, x)
                mstore(add(mIn, 32), y)
                mstore(add(mIn, 64), s)

                success := staticcall(sub(gas(), 2000), 7, mIn, 96, mIn, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }

                mstore(add(mIn, 64), mload(pR))
                mstore(add(mIn, 96), mload(add(pR, 32)))

                success := staticcall(sub(gas(), 2000), 6, mIn, 128, pR, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            function checkPairing(pA, pB, pC, pubSignals, pMem) -> isOk {
                let _pPairing := add(pMem, pPairing)
                let _pVk := add(pMem, pVk)

                // IC0x
                mstore(_pVk, sload(14))
                // IC0y
                mstore(add(_pVk, 32), sload(15))

                // Compute the linear combination vk_x
                // IC1x IC1y
                g1_mulAccC(
                    _pVk,
                    sload(16),
                    sload(17),
                    calldataload(add(pubSignals, 0))
                )

                // -A
                mstore(_pPairing, calldataload(pA))
                mstore(
                    add(_pPairing, 32),
                    mod(sub(q, calldataload(add(pA, 32))), q)
                )

                // B
                mstore(add(_pPairing, 64), calldataload(pB))
                mstore(add(_pPairing, 96), calldataload(add(pB, 32)))
                mstore(add(_pPairing, 128), calldataload(add(pB, 64)))
                mstore(add(_pPairing, 160), calldataload(add(pB, 96)))

                // alpha1 alphax alphay
                mstore(add(_pPairing, 192), sload(0))
                mstore(add(_pPairing, 224), sload(1))

                // beta2 betax1 betax2 betay1 betay2
                mstore(add(_pPairing, 256), sload(2))
                mstore(add(_pPairing, 288), sload(3))
                mstore(add(_pPairing, 320), sload(4))
                mstore(add(_pPairing, 352), sload(5))

                // vk_x
                mstore(add(_pPairing, 384), mload(add(pMem, pVk)))
                mstore(add(_pPairing, 416), mload(add(pMem, add(pVk, 32))))

                // gamma2 gammax1 gammax2 gammay1 gammay2
                mstore(add(_pPairing, 448), sload(6))
                mstore(add(_pPairing, 480), sload(7))
                mstore(add(_pPairing, 512), sload(8))
                mstore(add(_pPairing, 544), sload(9))

                // C
                mstore(add(_pPairing, 576), calldataload(pC))
                mstore(add(_pPairing, 608), calldataload(add(pC, 32)))

                // delta2 deltax1 deltax2 deltay1 deltay2
                mstore(add(_pPairing, 640), sload(10))
                mstore(add(_pPairing, 672), sload(11))
                mstore(add(_pPairing, 704), sload(12))
                mstore(add(_pPairing, 736), sload(13))

                let success := staticcall(
                    sub(gas(), 2000),
                    8,
                    _pPairing,
                    768,
                    _pPairing,
                    0x20
                )

                isOk := and(success, mload(_pPairing))
            }

            let pMem := mload(0x40)
            mstore(0x40, add(pMem, pLastMem))

            // Validate that all evaluations ∈ F

            checkField(calldataload(add(_pubSignals, 0)))

            checkField(calldataload(add(_pubSignals, 32)))

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
            return(0, 0x20)
        }
    }
}
