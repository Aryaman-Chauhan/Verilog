`include "BCD_To_Gray_dataflow.v"
`include "./BCD_To_Gray_gate.v"
module tb_BCD_To_Gray;
	reg a, b, c, d, e, f, g, h;
	wire g0, g1, g2, g3, gg0, gg1, gg2, gg3;
	BCD_To_Gray_dataflow BCDxGraydata (a, b, c, d, g3, g2, g1, g0);
	BCD_To_Gray_gate BCDxGraygate (e, f, g, h, gg3, gg2, gg1, gg0);
	initial
	begin
		$dumpfile("tb_BCD_To_Gray.vcd");
		$dumpvars;
	end
	initial
		begin
			$monitor(, $time, " a=%b, b=%b, c=%b, d=%b, g3=%b, g2=%b, g1=%b, g0=%b", a, b, c, d, g3, g2, g1, g0);
			#0 a=1'b0; b=1'b0; c=1'b0; d=1'b0;
			#2 d=1'b1;
			#5 d=1'b0; c=1'b1;
			#10 d=1'b1;
			#15 a=1'b1; b=1'b0; c=1'b0;
			#19 a=1'b0;
			#1 $monitoroff;
			#1 $monitoron;
			#1 $monitor(, $time, " e=%b, f=%b, g=%b, h=%b, g3=%b, g2=%b, g1=%b, g0=%b", e, f, g, h, gg3, gg2, gg1, gg0);
			#20 e=1'b0; f=1'b0; g=1'b0; h=1'b0;
			#22 h=1'b1;
			#25 h=1'b0; g=1'b1;
			#30 h=1'b1;
			#35 e=1'b1; f=1'b0; g=1'b0;
			#40 $finish;
		end
endmodule