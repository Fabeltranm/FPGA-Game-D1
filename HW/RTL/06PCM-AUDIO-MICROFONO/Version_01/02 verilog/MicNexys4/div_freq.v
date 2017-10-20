module div_freq #(
              parameter   fi     = 100000000,           
              parameter   fs	 = 2000000        //flckout=((2.38*fs)/500000)MHZ
  )(input clk, output reg clkout,input reset, output reg led);



initial led=0;

reg [31:0] count;

always @(posedge  clk)
begin
	if (reset) begin
	led=1;
		count <=count-1;
		if (count==0)begin
			clkout <=~clkout;
			count <= fi/fs;
		end	

	end
	else begin
	led=0;
		count <= fi/fs;
		clkout <=0;
	end	
end


endmodule
