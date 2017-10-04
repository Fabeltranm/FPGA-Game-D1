module	divisorfrec	(
				input           clk,
				output          CLKOUT
			);
	reg count_1000;
	
	initial
	begin
		CLKOUT=1'b1;
		count_1000=0;
	end
	
	always @(posedge clk) 
	begin
		count_1000 <= count_1000 + 1;
		if(count_1000 == 1000)
		begin
			count<=0;
			CLKOUT <= !CLKOUT;
		end
	end
endmodule
