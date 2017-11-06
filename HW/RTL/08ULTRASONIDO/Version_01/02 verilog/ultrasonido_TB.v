`timescale 1ns / 1ps
module ultrasonido_TB;
	//ALterno
	reg clk, reset, echo_s;
	wire [15:0]distance;
	wire trigger;
	wire done;
	ultrasonido  uut(.clk(clk),.reset(reset),.echo(echo_s),.done(done),.trigger(trigger),.distance(distance));//
	
	always
	begin
	clk = 1'b1;
	#5;
	clk = 1'b0;
	#5;
	end

	initial 
		begin
			reset = 0;
			#10
			reset = 1;
			#10
			reset = 0;
			echo_s = 0;
			#10
			echo_s = 1;
			#10000
			echo_s = 0;
		end
		 
	initial begin: TEST_CASE
		$dumpfile("ultrasonido_TB.vcd");
    	$dumpvars(-1, uut);
		#(1000000) $finish;
	end

endmodule //