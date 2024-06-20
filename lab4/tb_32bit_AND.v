`include "\bit32_AND.v"
module tb_32bit_AND;
	reg [31:0] IN1,IN2;
	wire [31:0] OUT;
	bit32_AND a1 (OUT,IN1,IN2);
	
	initial
	begin
		$dumpfile("tb_32bit_AND.vcd");
		$dumpvars;
	end
	initial
		$monitor($time, " in1=%b, in2=%b, out=%b", IN1, IN2, OUT);
	initial
		begin
			IN1=32'hA5A5;
			IN2=32'h5A5A;
			#100 IN1=32'h5A5A;
			#400 $finish;
		end
endmodule