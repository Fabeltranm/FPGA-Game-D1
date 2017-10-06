`timescale 1ns / 1ns

module spi_TB;

reg clk;
reg run;
wire sclk;

reg enable;

spi uut(.dataIN(55),.EN(enable),.run(run),.sclk(sclk));


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


always
	begin
	clk=0;
	#1;
	clk=1;
	#1;
	end



initial
	begin
	run=0;
	#10;
	run=1;
	#1000
	run=0;
	end

initial begin: TEST_CASE	
     $dumpfile("spi_TB.vcd");
     $dumpvars(-1, uut);
     #(2000) $finish;
   end

endmodule
