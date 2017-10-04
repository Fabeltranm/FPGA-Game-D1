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

reg [0:31] count;
reg [17:0] sregt;
reg done=0;
reg ws=1;




always @(negedge  clk, posedge enable)

	if (enable && done<=0) 
	begin	
		count<=0;
		if (count<=17)
			begin
			sregt<= {sregt[16:0],dataint};
			count<=count+1;
			end
		
		else if(dataint<=1'b0)
			begin
				if(count<=31)
				begin		
				sdata<= sregt[17:0];
				count<=count+1;
				end
				else
				begin
				ws=!ws;
				count<=0;
				end								
			end	
		else
			begin
			sdata<=0;
			done=1;
				
		end	
						
	end	
	else
	begin
	end


endmodule
