module divfreq #(parameter tope=100)(input run, input clk, output reg sclk);

reg [9:0] div=0;




always @(posedge clk)
	begin
		if(div==tope)
			begin
			div<=0;
			sclk<=~sclk;
			end
		else if(run==0)
			begin
			sclk<=0;
			div<=0;
			end
		else
			div<=div+1;

	end
endmodule
