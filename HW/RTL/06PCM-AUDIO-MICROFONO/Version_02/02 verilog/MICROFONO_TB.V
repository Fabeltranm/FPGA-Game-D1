`timescale 1ns / 1ps

module microfono_TB;

	// Inputs
	reg CLK;
	reg D_IN;

	// Outputs
	wire BCLK;
	wire WS;
	wire DONE;
	wire [17:0] D_OUT;

	// Instantiate the Unit Under Test (UUT)
	microfono uut (
		.CLK(CLK), 
		.D_IN(D_IN), 
		.BCLK(BCLK), 
		.WS(WS), 
		.DONE(DONE), 
		.D_OUT(D_OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		D_IN = 0;
		#100;
        

	end
      
endmodule
