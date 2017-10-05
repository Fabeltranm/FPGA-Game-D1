module microfono
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
reg ws=0;


div_freq df(.clk(clk), .reset(reset),.clkout(mclk));

always @(negedge  mclk, posedge enable)

	if (enable) 
	begin	
	count<=0;
	
		if (count<=17)
			begin
			done=0;
			sregt<= {sregt[16:0],dataint};
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
			done=1;
			end
		end	
	else
	begin
	end


endmodule
