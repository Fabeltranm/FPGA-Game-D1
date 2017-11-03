module pwm(clk_in, x_in, PWM_out, done);

input clk_in; //clock for counter
input [127:0] x_in; //control value that
//defines pulse width
output reg PWM_out = 1; //PWM signal out
input done;

reg [5:0] counter = 0;

microfono mic(.mclk(clk_in), .sregt(x_in),.done(done));


always@ (posedge clk_in )

begin
	if(done)
	begin
		if ( counter < x_in )
		PWM_out <= 1;
		else
		PWM_out <= 0;
		counter <= counter+1;
		end
	end
	else
	begin

	end
end
endmodule
