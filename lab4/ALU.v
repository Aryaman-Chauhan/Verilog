`include "\bit32_AND.v"
`include "\bit32_OR.v"
`include "\bit32_mux4x1.v"
`include "..\lab2\FullAdder_32bit.v"
module ALU(Result, Cout, A, B, Binvert, Cin, Op);
	input [31:0] A, B;
	input [1:0] Op;
	input Cin, Binvert;
	output [31:0] Result;
	output Cout;
	wire [31:0] o1, o2, o3, o4;
	
	assign o4 = 32'h00000000;
	
	assign B = (Binvert < 1)? B:~B;
	FullAdder_32bit f11(A, B, Cin, Cout, o3);
	bit32_AND f12(o1, A, B);
	bit32_OR f13(o2, A, B);
	bit32_mux4x1 f4(Result, Op, o1, o2, o3, o4);
endmodule