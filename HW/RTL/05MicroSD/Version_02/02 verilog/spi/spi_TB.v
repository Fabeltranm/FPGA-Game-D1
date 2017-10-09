`timescale 1ns / 1ns

module spi_TB;

reg enable;
reg reset;
reg clk;
reg MISO;
reg [15:0] dataIN;
wire [15:0] dataOUT;

wire cs;
wire DONE;
wire MOSI;
wire sclk;

spi uut(.dataIN(dataIN),.EN(enable),.reset(reset),.clk(clk),.MISO(MISO),.dataOUT(dataOUT),.DONE(DONE),.MOSI(MOSI),.CS(cs),.SCLK(sclk));



always
	begin
	clk=0;
	#1;
	clk=1;
	#1;
	end



initial
	begin
	MISO=1;
	reset=1;
	enable=0;
	#20;
	reset=0;
	#10;
	enable=1;
	dataIN=16'hAB52;
	end
reg [4:0] count=0;

always @(posedge sclk)
	begin
		if(count==15)
			count<=0;
		else
			count<=count+1;
	end


always @(posedge sclk)
	begin

	case(count)
	0: MISO<=1;
	1: MISO<=0;
	2: MISO<=0;
	3: MISO<=1;
	4: MISO<=1;
	5: MISO<=1;
	6: MISO<=0;
	7: MISO<=1;
	8: MISO<=0;
	9: MISO<=1;
	10:MISO<=0;
	11:MISO<=1;
	12:MISO<=1;
	13:MISO<=0;
	14:MISO<=1;
	15:MISO<=1;
	endcase
	end


initial begin: TEST_CASE	
     $dumpfile("spi_TB.vcd");
     $dumpvars(-1, uut);
     #(20000) $finish;
   end

endmodule
