module microfono
(
	output reg	ledlr,
	input		clk,
	output		mclk,
	input		lr,
	output		ws,
	input		dataint,
	input		reset,
	output reg [5:0] sregt

);
reg [0:5] count;
reg ws=0;


div_freq df(.clk(clk), .reset(reset),.clkout(mclk));

always @(posedge  mclk)
if (reset)
begin

	if(lr)
	begin
	ledlr=0;
	ws=ws;
	count<=0;
		if (count<=5)  /* guarda 5 bits */
				begin
				sregt<= {sregt[4:0],dataint};
				count<=count+1;
				end
	end



end

always @(negedge  mclk)
if (reset)
begin

	if(lr)
	begin
	ws=!ws;
	end

end	


endmodule
