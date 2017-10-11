module divfreq #(parameter tope=1000)(input run, input clk, output reg sclk, output reg sclkn);

integer div=0;


always @(posedge clk)
	begin
		if(div==tope&run)
			begin
			div<=0;
			sclk<=~sclk;
			sclkn<=~sclkn;
			end
		else if(run==0)
			begin
			sclk<=0;
			sclkn<=1;
			div<=0;
			end
		else
			div<=div+1'b1;

	end




endmodule
