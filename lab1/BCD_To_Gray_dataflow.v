module BCD_To_Gray_dataflow (a, b, c, d, g3, g2, g1, g0);
	input a,b,c,d;
	output g0,g1,g2,g3;
	
	assign g3 = a;
	assign g2 = a|b;
	assign g1 = b^c;
	assign g0 = c^d;
endmodule