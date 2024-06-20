module RegisterFile_bit32(rs, rt, rd, Data, A, B, RegWrite);
	input [4:0] rs, rt, rd;
	input RegWrite;
	input [31:0] Data;
	output [31:0] A, B;
	
endmodule