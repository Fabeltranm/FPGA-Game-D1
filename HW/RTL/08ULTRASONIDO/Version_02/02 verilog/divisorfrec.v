module	divisorfrec	(
				input           clk,
				input		ENABLE,
				output          CLKOUT
			);
	reg [10:0] count_2924;
	reg [10:0] top;
	
	initial
	begin
		CLKOUT=1'b1;
		count_2924=0;
		top=11'b11000010001;// top=100MHz/(2*32.2kHz)=1553, error: 0.0132%
	end
	
	always @(posedge clk) 
	begin
		if(ENABLE)
		begin
			count_2924 <= count_2924 + 1;
			if(count_2924 == top)
			begin
				count_2924<=0;
				CLKOUT <= ~CLKOUT;
			end
		end
	end
endmodule
