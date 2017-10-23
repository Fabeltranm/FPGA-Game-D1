module controlador #(
  	parameter adr_width = 12,
	parameter dat_width = 6
   )
(
	input  		clk, reset,
	input  		rd, wr,
	output 		[dat_width-1:0] data_out,
	output 		ledlr,
	output 		ledres,
	output		mclk,
	input		lr,
	output		ws,
	input		dataint);

fifo fi(.data_out(data_out),.rd(rd),.wr(wr));
microfono mi(.clk(clk),.reset(reset),.mclk(mclk),.lr(lr),.ws(ws),.dataint(dataint),.ledres(ledres),.ledlr(ledlr));


endmodule
