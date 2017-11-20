module microfono
(
	input			reset,	
	input         		micData, 
	input			clk,
	output			mclk,
	output	reg		micLRSel,
        output			ledres,
        output  reg		ampPWM,
        output  reg     	ampSD,
	output          	mclk2,
	output  reg 		sregt,
	output  reg     	done 

);

reg [15:0] count=16;

assign mclk2=mclk1;
assign mclk=mclk1;
initial done<=0;
initial micLRSel <= 0;
initial ampSD <= 1;

div_freq df(.clk(clk), .reset(reset),.clkout(mclk1),.led(ledres));

always @(posedge  mclk)
begin
	if (reset)
     	ampPWM<=0; 	
	else 
	begin	
	done<=0;
	ampPWM <= micData;
	sregt<= micData;
	count<=count-1;
			if(count<=0)
			begin
			done<=1;
			count<=16;
			end
	
	end
end




endmodule
