module microfono
(
	input 		reset,	
	output 		ledres,
	input		clk,
	output		mclk,
	output    reg   micLRSel,
        input           micData,    
        output    reg   ampPWM,
        output    reg   ampSD,
	input		rd,wr,
	output		empty,
	output		full,
	output    [7:0]	dout,
	output reg [7:0] sregt  

);

fifo fi(.reset(reset),.din(sregt),.dout(dout),.clock(mclk),.rd(rd),.wr(wr),.empty(empty),.full(full));
pwm df(.ampSD(ampSD), .reset(reset),.mclk(mclk),.ampPWM(ampPWM),.clk(clk),.[7:0]dout(dout));



reg [7:0] count= 0;

initial micLRSel <= 0;
initial ampSD <= 1;


always @(posedge  mclk)
begin
	if (reset)
		begin
     		ampPWM<=0;
    		end 
	else 
		begin
		if(count==7)
			begin
			count=count+1;
			sregt<= {sregt[6:0],micData};		
			end
			else		
			begin
			sregt<=0; 
			count<=0;
			end
		end
	
	
end




endmodule
