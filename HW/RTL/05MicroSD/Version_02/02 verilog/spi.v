module spi
	#(parameter N=8)( 
	input [N-1:0] datain,
	input en,
	input reset,
	input clk,
	input miso,
	output [N-1:0] dataout,
	output done,
	output mosi,
	output cs,
	output sclk
	);

wire rund;
wire scl;
wire don;
wire sclkn;

assign done =don;
assign sclk=scl;
comparador cmp(.en(en),.cs(cs), .run(rund),.done(don));
divfreq  df(.run(rund), .clk(clk), .sclk(scl),.sclkn(sclkn));
shifti shi(.sclkn(sclkn), .reset(reset), .datase(datain), .mosi(mosi), .enable(en));
shiftd shd(.sclk(scl), .reset(reset), .datare(dataout), .miso(miso));
contador cnt (.sclkn(sclkn),.reset(reset), .done(don));




endmodule
