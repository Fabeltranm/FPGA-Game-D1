module pwm
(
	input 		reset,	
	output 		ledres,
	input		clk,
	output		mcl,
        input           micData,    
        output    reg   ampPWM,
        output    reg	ampSD,
	input     	dout,
	input 		done
//	input 		empty1
 //

);


initial ampSD <= 1;
//initial done1<= 0;

always @(posedge  mcl )
begin

	if (reset)
		begin
     		ampPWM<=0;
    		end 
	else 
		begin
		ampPWM<=dout;
		
		end
		

		
	
end

endmodule
