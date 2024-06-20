`include "\Register_bit32.v"
module tb_Register_bit32;
	reg [31:0] d;
	reg clk,reset;
	wire [31:0] q;
	Register_bit32 R(q,d,clk,reset);
	always @(clk)
	#5 clk<=~clk;
	initial
		$monitor($time,"  D=%b, CLK=%b, Reset=%b, \n\t\t      Q=%b\n", d, clk, reset, q);
	initial
	begin
		clk= 1'b1;
		reset=1'b0;//reset the register
		#20 reset=1'b1;
		#20 d=32'hAFAFAFAF;
		#25 d=32'hAAFFAAFF;
		#30 d=32'h00000000;
		#60 d=32'hFFFFFFFF;
		#200 $finish;
	end
endmodule