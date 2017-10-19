module div_freq #(
              parameter   fi     = 100000000,           
              parameter   fs	 = 2000000        //flckout=((2.48*fs)/500000)KHZ
  )(input clk, output reg clkout,input reset, output reg led);



initial led=0;

reg [15:0] count;

always @(posedge  clk)
begin
	if (reset) begin
	led=1;
		count <= fi/fs;
		clkout <=0;
	end
	else begin
		led=0;
		count <=count-1;
		if (count==0)begin
			clkout <=~clkout;
			count <= fi/fs;
		end	
	end	
end


endmodule
