`include "../lab4/bit32_mux4x1.v"
`include "../lab4/bit32_mux2x1.v"
module bit32_mux32x1(out, sel, IN);
	input [31:0][31:0] IN;
	output [31:0] out;
	input [4:0] sel;
	wire [9:0][31:0] f;
	genvar j, i;
	
	generate for(j = 0, i = 0; j < 32; j = j + 4, i = i + 1)
		begin: mux_loop_master
			bit32_mux4x1 bm1 (f[i], sel[1:0], IN[j], IN[j+1], IN[j+2], IN[j+3]);
		end
	endgenerate
	bit32_mux4x1 m1 (f[8], sel[3:2], f[0], f[1], f[2], f[3]);
	bit32_mux4x1 m2 (f[9], sel[3:2], f[4], f[5], f[6], f[7]);
	bit32_mux2x1 m3 (out, sel[4], f[8], f[9]);
endmodule