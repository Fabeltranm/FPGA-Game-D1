module controlador #(
  	parameter adr_width = 12,
	parameter dat_width = 6
   )
(
	input  		clk, reset,
	output 		ledlr,
	output 		ledres,
	output		mclk,
	input		lr,
	output		ws,
	input		dataint,
	output 		PWM_out
);


microfono mic(.clk(clk),.reset(reset),.mclk(mclk),.lr(lr),.ws(ws),.dataint(dataint),.ledres(ledres),.ledlr(ledlr));

pwm pw(.PWM_out(PWM_out));

endmodule
