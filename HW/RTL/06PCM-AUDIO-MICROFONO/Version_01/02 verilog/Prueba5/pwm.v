module pwm
(

	input			clk,
	input 			reset,
	input    [15:0]	dout,
	output			mclk,
        output  reg		ampPWM,
        output  reg     	ampSD,
	output  reg     	done

);

reg [15:0] count=16;


initial done<=0;
initial ampSD <= 1;

div_freq df(.clk(clk), .reset(reset),.clkout(mclk),.led(ledres));

always @(posedge  mclk)
begin
	if (reset)
     	ampPWM<=0; 	
	else 
	begin	
	done<=0;
	ampPWM <= dout<<1;
	count<=count-1;
			if(count<=0)
			begin
			ampPWM <= dout<<1;
			done<=1;
			count<=16;
			end
	
	end
end




endmodule
