module div_freq #(
              parameter   fi     = 100000000,           
              parameter   fs	 = 25.210084034        //flckout=((0.238*fs)/500000)MHZ fs=Fout*500000/0.238
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
