module D_FF_ASync_Clear(d, clearBar, clock, q);
	input d, clearBar, clock;
	output q;
	reg q;
	
	always@(negedge clearBar or posedge clock)
		begin
			if(!clearBar)
				q <= 1'b0;
			else
				q <= d;
		end
endmodule