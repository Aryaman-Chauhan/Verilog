module BCD_To_Gray_gate (a, b, c, d, g3, g2, g1, g0);
	input a,b,c,d;
	output g0,g1,g2,g3;
	wire e, f, g, h, i, j, k;
	
	or o1 (g3, a, a);
	or o2 (g2, a, b);
	not n1 (e, b);
	not n2 (f, c);
	not n3 (g, d);
	and a1 (h, e, c);
	and a2 (i, f, b);
	or o3 (g1, h, i);
	and a3 (j , f, d);
	and a4 (k , g, c);
	or o4 (g0, k, j);
endmodule