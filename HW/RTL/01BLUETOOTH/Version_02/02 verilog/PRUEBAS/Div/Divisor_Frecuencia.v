module Divisor_Frecuencia #(
              parameter   fi     = 100000000,           
              parameter   fs	 = 76000     //flckout=((0.238*fs)/500000)MHZ fs=Fout*500000/0.238
  )(input clk_in, output reg clk_div);

reg [15:0] count;

always @(posedge  clk_in)
    begin
		count <=count-1;
		if (count==0)
        begin
			clk_div <=~clk_div;
			count <= fi/fs;
	    end	
    end
endmodule
