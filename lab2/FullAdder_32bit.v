`include "\FullAdder_8bit.v"
module FullAdder_32bit(A, B, Cin, Cout, S);
	input [31:0] A, B;
	input Cin;
	output Cout;
	output S[31:0];
	wire c1, c2, c3, z;
	
	assign z=0;
	FullAdder_8bit f1(A[7:0], B[7:0], Cin, c1, S[7:0]);
	FullAdder_8bit f2(A[15:8], B[15:8], c1, c2, S[15:8]);
	FullAdder_8bit f3(A[23:16], B[23:16], c2, c3, S[23:16]);
	FullAdder_8bit f4(A[31:24], B[31:24], c3, Cout, S[31:24]);
endmodule