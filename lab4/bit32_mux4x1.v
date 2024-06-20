`include "\bit32_mux2x1.v"
module bit32_mux4x1(out, sel, inp1, inp2, inp3, inp4);
	input [31:0] inp1, inp2, inp3, inp4;
	input [1:0] sel;
	output [31:0] out;
	wire [31:0] f1, f2;
	
	bit32_mux2x1 ma(f1[31:0], sel[0], inp1[31:0], inp2[31:0]);
	bit32_mux2x1 mb(f2[31:0], sel[0], inp1[31:0], inp2[31:0]);
	bit32_mux2x1 mf(out[31:0], sel[1], f1[31:0], f2[31:0]);
	
endmodule