module prueb_mic
(
	input     enable,
	input 	  clk,
	output    [31:0]  sdata,
	output     mclk,
	output     ws,
	input     dataint,
	input reset,
	output    done

);

reg [17:0] count=18;
reg [17:0] sregt;
reg done=0;



always @(negedge  clk, posedge enable)

	if (enable) 
		if (count<=18)
		begin
		sregt<= {sregt[16:0],dataint};
		count<=count-1;
		end		
		else if(dataint<=0)
		done<=1;
	else 
	count<=1;


endmodule
