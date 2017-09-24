`timescale 1ns / 1ps

module Ultrasonido_TB;

	// Inputs
	reg ENABLE;
	reg ECHO;
	reg clk;

	// Outputs
	wire [7:0] d;
	wire trigg;
	wire DONE;

	// Instantiate the Unit Under Test (UUT)
	Ultrasonido uut (
		.d(d), 
		.trigg(trigg), 
		.DONE(DONE), 
		.ENABLE(ENABLE), 
		.ECHO(ECHO), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		ENABLE = 0;
		ECHO = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		//for(int i=0;i<=10;i=i+1)
		//begin
			#50;
			clk = ~clk;
		//end
		// Add stimulus here

	end
      
endmodule

