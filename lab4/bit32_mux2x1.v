`include "\bit8_mux2x1.v"
module bit32_mux2x1(out, sel, in1, in2);
	input [31:0] in1, in2;
	input sel;
	output [31:0] out;
	genvar j;
	
	generate for(j = 31; j >= 7; j= j - 8) 
		begin: mux_loop
			bit8_mux2x1 m1 (out[j:j-7], sel, in1[j:j-7], in2[j:j-7]);
		end
	endgenerate
endmodule	