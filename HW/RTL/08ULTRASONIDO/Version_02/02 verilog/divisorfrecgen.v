module	divisorfrec	(
				input           clk,
				output          CLKOUT1
			);
	reg count_1000;
	//
	initial
	begin
		CLKOUT1=1'b1;
		count_1000=0;
	end
	//
	always @(posedge clk) 
	begin
		count_1000 <= count_1000 + 1;
		if(count_1000 == 1000)
		begin
			count<=0;
			CLKOUT1 <= !CLKOUT1;
		end
	end
endmodule
