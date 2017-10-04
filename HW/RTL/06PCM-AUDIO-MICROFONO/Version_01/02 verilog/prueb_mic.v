module prueb_mic
(
	input		enable,
	input		clk,
	output reg 	[17:0]  sdata,
	output		mclk,
	output		ws,
	input		dataint,
	input		reset,
	output		done

);

reg [0:31] count=0;
reg [17:0] sregt;
reg done=0;
reg ws=0;




always @(negedge  clk, posedge enable)

	if (enable) 
	begin	
		if (count<=17)
			begin
			sregt<= {sregt[17:0],dataint};
			count<=count+1;
			end		
			else if(dataint<=1'b0 && count<=30)
			begin		
			sdata<= sregt[17:0];
			count<=count+1;
			end
			else 
			begin
			count<=0;				
			ws=!ws;	
			end
	end	
	else
	done=1;


endmodule
