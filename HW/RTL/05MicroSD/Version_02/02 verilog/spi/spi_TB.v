`timescale 1ns / 1ns

module spi_TB;

reg enable;
reg reset;
reg clk;
reg MISO;
reg RW;

wire cs;
wire DONE;
wire MOSI;
wire sclk;

spi uut(.dataIN(55),.EN(enable),.reset(reset),.clk(clk),.MISO(MISO),.RW(RW),.addres(55),.dataOUT(55),.DONE(DONE),.MOSI(MOSI),.CS(cs),.SCLK(sclk));



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
