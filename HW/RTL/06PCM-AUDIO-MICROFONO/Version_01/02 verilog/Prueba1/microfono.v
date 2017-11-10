module microfono
(
	input 		reset,	
	output 		ledres,
	input		clk,
	output		mclk,
	output    reg   micLRSel,
        input           micData,    
        output      reg    ampPWM,
        output   reg       ampSD     

);
reg [31:0] count= 0;

initial micLRSel <= 0;
initial ampSD <= 1;
div_freq df(.clk(clk), .reset(reset),.clkout(mclk),.led(ledres));

always @(posedge  mclk)
begin
	if (reset)
		begin
     		ampPWM <= micData;
    		end 
	else ampPWM<=0;
	
end




endmodule
