`include "\FullAdder_1bit.v"
module FullAdder_8bit(A, B, Cin, Cout, S);
	input [0:7] A;
	input [0:7] B;
	input Cin;
	wire [0:6] C;
	output Cout;
	output [0:7] S;
	
	FullAdder_1bit f1(S[7], C[6], A[7], B[7], Cin);
	FullAdder_1bit f2(S[6], C[5], A[6], B[6], C[6]);
	FullAdder_1bit f3(S[5], C[4], A[5], B[5], C[5]);
	FullAdder_1bit f3(S[4], C[3], A[4], B[4], C[4]);
	FullAdder_1bit f3(S[3], C[2], A[3], B[3], C[3]);
	FullAdder_1bit f3(S[2], C[1], A[2], B[2], C[2]);
	FullAdder_1bit f3(S[1], C[0], A[1], B[1], C[1]);
	FullAdder_1bit f3(S[0], Cout, A[0], B[0], C[0]);
endmodule