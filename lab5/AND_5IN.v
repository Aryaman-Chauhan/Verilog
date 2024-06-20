module AND_5IN(g, a, b, c, d, e);
	input a, b, c, d, e;
	output g;
	wire w1, w2, w3
	
	and a1(w1, a, b);
	and a2(w2, c, d);
	and a3(w3, w1, e);
	and a4(g, w3, w2);
endmodule