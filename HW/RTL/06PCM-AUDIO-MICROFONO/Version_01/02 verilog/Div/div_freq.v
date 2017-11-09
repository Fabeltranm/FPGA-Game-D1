module div_freq #(
              parameter   fi     = 50000000,        //<- fFPGA/2=fi  
              parameter   fs	 = 38461.538        //<- flckout=fs
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
