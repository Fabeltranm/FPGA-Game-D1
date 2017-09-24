module audifono
(
	input     Enable,
	input     data,
	output     Bclk,
	output     LRclk,
	output     [15:0]Data_R,
	output     [15:0]Data_L,
	output     Done,
	parameter   count  = 15,

);

endmodule


