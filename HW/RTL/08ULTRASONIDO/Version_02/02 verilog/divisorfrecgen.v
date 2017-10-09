module	divisorfrec	(
				input           clk,
				input		ENABLE
				output          CLKOUT1
			);
	reg [9:0] count_1000;
	reg [9:0] top;
	//
	initial
	begin
		CLKOUT1=1'b0;
		count_1000=0;
		top=10'b1111101000;// top=100MHz/100kHz=1000
	end
	//
	always @(posedge clk) 
	begin
		if(ENABLE)
		begin
			count_1000 <= count_1000 + 1;
			if(count_1000 == top)
			begin
				count_1000<=0;
				CLKOUT1 <= ~CLKOUT1;
			end
		end
	end
endmodule
