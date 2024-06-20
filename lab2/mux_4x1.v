`include "..\lab1\mux_2x1.v"
module mux_4x1(out, in, sel);
	input [0:3] in;
	input [0:1] sel;
	output out;
	wire [0:1] ma;
	
	mux_2x1 mux1(in[3], in[2], sel[1], ma[1]);
	mux_2x1 mux2(in[1], in[0], sel[1], ma[0]);
	mux_2x1 mux3(ma[1], ma[0], sel[0], out);
endmodule