module microfono
(
	input     enable,
	input 	  clk,
	output    [35:0]  sdata,
	output     mclk,
	output     ws,
	input     dataint,
	output     done,
	input reset

);

reg count=0;
reg [17:0] sregt


always @(negedge  mclk)
begin
	if (enable=1) 
	
		if (count<=18)
		
		sregt= {sregt[34:0],dataint};
		count ++;

		else 
			if(count=32 and dataint=0)

			else 
			ws=ws!;
			done=1;
	

	else 
	
end


endmodule
