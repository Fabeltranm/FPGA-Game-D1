module driver
(
	input             clkMaster,
	input      [15:0]  DataIN,
	input      [7:0]  Adress,
	input     Enable,
	input     R/W,
	input     Done,
	output     [15:0]  DataOUT

	input     clkSlave,
	input     MISO,
	output     MOSI,	
	output     CS,

);

endmodule
