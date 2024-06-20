`include "..\lab3\D_FF_Sync_Clear.v"
module Register_bit32(Q, D, CLK, reset);
	input [31:0] D;
	input CLK, reset;
	output [31:0] Q;
	genvar j;
	
	generate for(j = 31; j >= 0; j = j - 1)
		begin: reg_loop
			D_FF_Sync_Clear d1 (D[j], reset, CLK, Q[j]);
		end
	endgenerate

endmodule