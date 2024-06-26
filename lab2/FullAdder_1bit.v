`include "\decoder_3x8.v"
module FullAdder_1bit(s, c, x, y, z);
	input x,y,z;
	wire d0,d1,d2,d3,d4,d5,d6,d7;
	output s,c;
	
	decoder_3x8 dec(d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);
	assign s = d1 | d2 | d4 | d7, c = d3 | d5 | d6 | d7;
	
endmodule