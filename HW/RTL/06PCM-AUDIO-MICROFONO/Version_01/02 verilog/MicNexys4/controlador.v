module controlador #(
  	parameter adr_width = 12,
	parameter dat_width = 6
   )
(
	input  		clk, reset,
	output 		ledlr,ledc,
	output 		ledres,
	output		mclk,
	input		lr,
	input		dataint,
	output 		PWM_out
);


microfono mic(.clk(clk),.reset(reset),.mclk(mclk),.lr(lr),.dataint(dataint),.ledres(ledres),.ledlr(ledlr),.ledc(ledc));

pwm pw(.PWM_out(PWM_out));

endmodule
