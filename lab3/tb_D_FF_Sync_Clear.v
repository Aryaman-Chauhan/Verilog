`include "\D_FF_Sync_Clear.v"
module tb_D_FF_Sync_Clear;
	reg d, clk, rst;
	wire q;
	D_FF_Sync_Clear dff (d, rst, clk, q);
	
	initial
	begin
		$dumpfile("tb_D_FF_Sync_Clear.vcd");
		$dumpvars;
	end
	initial begin
			clk=0;
	end
	always
		#5 clk = ~clk;
	initial
		$monitor($time,"  d=%b, clk=%b, rst=%b, q=%b\n", d, clk, rst, q);
	initial begin
		#0 d=0; rst=1;
		#4 d=1; rst=0;
		#50 d=1; rst=1;
		#20 d=0; rst=0;
		#100 $finish;
	end
endmodule