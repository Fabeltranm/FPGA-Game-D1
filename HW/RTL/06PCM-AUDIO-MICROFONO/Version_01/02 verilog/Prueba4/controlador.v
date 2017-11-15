module controlador #(
  	parameter adr_width = 10,
	parameter dat_width = 16
   )
(
	input 			reset,	
	input [dat_width-1:0]	data_in,
	input			clk,
        input           	micData,    
  	input 			rd, wr,
	output			mclk,
	output   		mclk2,
	output	reg   		micLRSel,    	
	output	reg    		ampPWM,
        output	reg       	ampSD,
  	output [dat_width-1:0]	data_out,
   	output 			empty,
    	output 			full,	
	output			done,	
	output 			ledres





   );

fifo fi(.dout(data_out),.rd(rd),.wr(wr),.din(data_in),.empty(empty),.rd(rd),.wr(wr),.full(full),.clock(done));

microfono mi(.clk(clk),.mclk2(mclk2),.reset(reset),.mclk(mclk),.micLRSel(micLRSel),.micData(micData),.ledres(ledres),.ampPWM(ampPWM),.ampSD(ampSD),.done(done),.sregt(data_in));

endmodule
