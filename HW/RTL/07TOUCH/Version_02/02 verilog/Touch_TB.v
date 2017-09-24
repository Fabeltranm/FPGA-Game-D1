`timescale 1ns / 1ps

module Touch_TB;

	// Inputs
	reg clk;
	reg Rx;

	// Outputs
	wire DONE;
	wire [7:0] data;

	// Instantiate the Unit Under Test (UUT)
	Touch uut (
		.DONE(DONE), 
		.data(data), 
		.clk(clk), 
		.Rx(Rx)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		Rx = 0;

		#100;
        

	end
      
endmodule

