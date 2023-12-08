pragma circom 2.1.6;

include "C:\Users\Alex Wang\Desktop\circom_tests\circomlib-master\circuits\escalarmul.circom";

template PedersenCommitment() {
    signal input data[256];           // Data to be committed, 256 bits
    signal input blindingFactor[256]; // Random blinding factor, 256 bits
    signal output commitment[2]; // Output commitment

    // Assuming G and H are two different base points on the elliptic curve
	// For simplicity, we're using hardcoded values for G and H.
	var G[2] = [55066263022277343669578718895168534326250603453777594175500187360389116729240, 32670510020758816978083085130507043184471273380659243275938904335757337482424];
	
	var H[2] = [89565891926547004231252920425935692360644145829622209833684329913297188986597, 12158399299693830322967808612713398636155367887041628176798871954788371653930];

    // Commitment calculation: C = r*G + m*H
    signal rG[2];
    signal mDataH[2];

    component escalarMul1 = EscalarMul(256, G); // 256 bits blindingFactor
    escalarMul1.in <== blindingFactor;
	escalarMul1.inp <== G;
    rG <== escalarMul1.out;

    component escalarMul2 = EscalarMul(256, H);  // 256 bits data
    escalarMul2.in <== data;
	escalarMul2.inp <== H;
    mDataH <== escalarMul2.out;

    // Add the two points together to get the commitment (simplified, should use escalar add)
    commitment[0] <== rG[0] + mDataH[0];
    commitment[1] <== rG[1] + mDataH[1];
}

component main = PedersenCommitment();



