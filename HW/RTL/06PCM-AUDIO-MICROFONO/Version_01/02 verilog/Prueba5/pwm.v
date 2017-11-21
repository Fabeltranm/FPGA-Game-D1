module microfono
(
	input 		reset,	
	output 		ledres,
	input		clk,
	output		mclk,
        input           micData,    
        output    reg   ampPWM,
        output    reg   ampSD,
	output    reg [7:0] dout
 

);


reg [7:0] count= 0;

initial ampSD <= 1;
div_freq df(.clk(clk), .reset(reset),.clkout(mclk),.led(ledres));

always @(posedge  mclk)
begin
	if (reset)
		begin
     		ampPWM<=0;
    		end 
	else 
		begin
		if (count==7)
			begin
			ampPWM<=[count] dout;
			count<=count+1;
			end
		else
			begin
			count<=0;
			end
		end
	
	
end




endmodule
