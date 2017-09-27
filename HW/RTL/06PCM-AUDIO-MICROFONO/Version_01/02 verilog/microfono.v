module microfono
(
	input     Enable,
	input 	  clk,
	output    [35:0]  Sdata,
	output     mclk,
	output     ws,
	input     Dataint,
	output     Done,
	input reset

);

reg count=0;
reg [17:0] sregt

div_freq df(.clk(clk), .reset(reset),clkout(mclk));

always @(negedge  mclk)
begin
	if (Enable=1) 
	
		if (count<=18)
		
		sregt= {sregt[34:0],Dataint};
		count ++;

		else 
			if(count=32 and Dataout)

			else 
			ws=ws!;
			done=1;
	

	else 
	
end


endmodule
