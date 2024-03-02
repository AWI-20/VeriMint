pragma circom 2.1.6;

include "C:\Users\Alex Wang\Desktop\circom_tests\circomlib-master\circuits\pedersen.circom";
include "C:\Users\Alex Wang\Desktop\circom_tests\maci-master\circuits\circom\ecdh.circom";

template BuyerStageProof() {
    // Inputs
    signal input buyerPublicKey[2];   // Public key provided by the buyer
    signal input commitment[2];       // Original commitment from the InitialStage
    signal input modifiedCommitment[2]; // Commitment after operation with shared secret
    signal input sellerPrivateKey;  // Private key of the seller (kept secret)

    // Intermediate signals
    signal output sharedSecret[2];    // ECDH shared secret
    signal output computedCommitment[2]; // Commitment computed inside the circuit

    // ECDH shared secret calculation
    component ecdh = Ecdh();
    ecdh.pubKey[0] <== buyerPublicKey[0];
    ecdh.pubKey[1] <== buyerPublicKey[1];
    ecdh.privKey <== sellerPrivateKey;

    sharedSecret[0] <== ecdh.sharedKey[0];
    sharedSecret[1] <== ecdh.sharedKey[1];

    // Compute the commitment inside the circuit
    computedCommitment[0] = commitment[0] + sharedSecret[0];
    computedCommitment[1] = commitment[1] + sharedSecret[1];

    // Check if the computed commitment matches the provided modifiedCommitment
    assert(computedCommitment[0] == modifiedCommitment[0]);
    assert(computedCommitment[1] == modifiedCommitment[1]);
}

component main{public [buyerPublicKey, commitment, modifiedCommitment]} = PedersenCommitment();
