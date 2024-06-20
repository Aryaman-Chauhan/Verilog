`include "..\lab1\mux_2x1.v"
module bit8_mux2x1(out, sel, in1, in2);
	input [7:0] in1, in2;
	input sel;
	output [7:0] out;
	genvar j;
	
	generate for(j = 0; j < 8; j= j + 1) 
		begin: mux_loop
			mux_2x1 m1 (out[j], sel, in1[j], in2[j]);
		end
	endgenerate

endmodule	