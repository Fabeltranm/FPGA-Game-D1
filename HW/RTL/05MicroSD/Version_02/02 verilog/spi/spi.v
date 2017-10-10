module spi
	#(parameter N=8)( 
	input [N-1:0] dataIN,
	input EN,
	input reset,
	input clk,
	input MISO,
	output [N-1:0] dataOUT,
	output DONE,
	output MOSI,
	output CS,
	output SCLK
	);

wire rund;
wire sclk;
wire done;
wire sclkn;

assign DONE =done;
assign SCLK=sclk;
comparador cmp(.EN(EN),.CS(CS), .run(rund),.DONE(done));
divfreq  df(.run(rund), .clk(clk), .sclk(sclk),.sclkn(sclkn));
shifti shi(.sclkn(sclkn), .reset(reset), .dataSe(dataIN), .MOSI(MOSI));
shiftd shd(.sclk(sclk), .reset(reset), .dataRe(dataOUT), .MISO(MISO));
contador cnt (.sclkn(sclkn),.reset(reset), .DONE(done));




endmodule
