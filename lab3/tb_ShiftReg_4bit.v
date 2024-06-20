`include "\ShiftReg_nbit.v"
module tb_ShiftReg_4bit;
	parameter n = 4;
	reg En, in, CLK;
	wire [n-1:0] Q;
	
	ShiftReg_nbit shreg(En, in, CLK, Q);
	
	initial
	begin
		$dumpfile("tb_ShiftReg_4bit.vcd");
		$dumpvars;
	end
	initial begin
		CLK = 0;
	end
	always
		#2 CLK=~CLK;
	initial
		$monitor($time, " En=%b, in=%b, CLK=%b, Q=%b\n", En, in, CLK, Q);
	initial 
	begin
		#0 in=0; En=0;
		#4 in=1; En=1;
		#4 in=1; En=0;
		#4 in=0; En=1;
		#10 $finish;
	end
endmodule