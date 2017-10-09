module	divisorfrec	(
				input           clk,
				output          CLKOUT
			);
	reg [11:0] count_2924;
	
	initial
	begin
		CLKOUT=1'b1;
		count_2924=0;
	end
	
	always @(posedge clk) 
	begin
		count_2924 <= count_2924 + 1;
		if(count_2924 == 2924)
		begin
			count_2924<=0;
			CLKOUT <= ~CLKOUT;
		end
	end
endmodule
