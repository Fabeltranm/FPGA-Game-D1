module spi
	( 
	input [15:0] dataIN,
	input EN,
	input reset,
	input clk,
	input MISO,
	input RW,
	input [15:0] addres,
	output [15:0] dataOUT,
	output DONE,
	output MOSI,
	output CS,
	output SCLK
	);

wire rund;
wire sclk;
wire done;
assign SCLK =sclk;
assign DONE =done;
comparador cmp(.EN(EN),.DONE(done),.CS(CS), .run(rund));
divfreq  df(.run(rund), .clk(clk), .sclk(sclk));
shift sh(.sclk(sclk), .reset(reset), .dataSe(dataIN), .dataRe(dataOUT), .MISO(MISO), .MOSI(MOSI));
contador cnt (.sclk(sclk),.reset(reset), .DONE(done));



endmodule
