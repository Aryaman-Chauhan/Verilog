`include "\FullAdder_1bit.v"
module tb_FullAdder_1bit;
	reg x,y,z;
	wire s,c;
	FullAdder_1bit fl(s,c,x,y,z);
	initial
	begin
		$dumpfile("tb_FullAdder_1bit.vcd");
		$dumpvars;
	end
	initial
		begin
			$monitor(,$time,"x=%b,y=%b,z=%b,s=%b,c=%b",x,y,z,s,c);
		end
	initial
		begin
			#0 x=1'b0;y=1'b0;z=1'b0;
			#4 x=1'b1;y=1'b0;z=1'b0;
			#4 x=1'b0;y=1'b1;z=1'b0;
			#4 x=1'b1;y=1'b1;z=1'b0;
			#4 x=1'b0;y=1'b0;z=1'b1;
			#4 x=1'b1;y=1'b0;z=1'b1;
			#4 x=1'b0;y=1'b1;z=1'b1;
			#4 x=1'b1;y=1'b1;z=1'b1;
		end
endmodule
