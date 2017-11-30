module pwm
(
	input 		reset,	
	output 		ledres,
	input		clk,
	output		mclk,
        input           micData,    
        output    reg   ampPWM,
        output    reg	ampSD,
	input     	dout,
	input 		done1,
	input 		empty
 

);


initial ampSD <= 1;
initial done1<= 0;

always @(posedge  mclk )
begin

	if (reset)
		begin
     		ampPWM<=0;
    		end 
	else 
		begin
		if(~empty)
		begin
		ampPWM<=dout;
		done1<=~done1;
		end
		end
		

		
	
end

endmodule
