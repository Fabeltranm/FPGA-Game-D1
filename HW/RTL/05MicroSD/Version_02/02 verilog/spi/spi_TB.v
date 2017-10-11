`timescale 1ns / 1ns

module spi_TB;
parameter N=8;
reg EN;
reg reset;
reg clk;
reg MISO;
reg [N-1:0] dataIN;
wire [N-1:0] dataOUT;
wire sclkn;
wire cs;
wire DONE;
wire MOSI;
wire SCLK;

spi uut(.dataIN(dataIN),.EN(EN),.reset(reset),.clk(clk),.MISO(MISO),.dataOUT(dataOUT),.DONE(DONE),.MOSI(MOSI),.CS(CS),.SCLK(SCLK));





always
	begin
	clk=0;
	#1;
	clk=1;
	#1;
	end



initial
	begin
	EN=0;
	reset=1;
	MISO=1;
	dataIN=0;
	#5000
	reset=0;
	EN=1;
	dataIN=8'hA7;
	
	end
integer count=0;

always @(posedge SCLK)
	begin
		if(count==8)
			count<=0;
		else
			count<=count+1'b1;
	end

reg [7:0] dataEn=8'hBC;

always @(posedge SCLK)
	begin

	case(count)
	0: MISO<=dataEn[0];
	1: MISO<=dataEn[1];
	2: MISO<=dataEn[2];
	3: MISO<=dataEn[3];
	4: MISO<=dataEn[4];
	5: MISO<=dataEn[5];
	6: MISO<=dataEn[6];
	7: MISO<=dataEn[7];
	endcase
	end

initial 
	begin: TEST_MONITOR
	$monitor ("time=", $time, " reset = %b EN = %b dataIN = %b SCLK = %b MOSI = %b MISO = %b CS = %b dataOUT = %h DONE = %b" ,reset, EN, dataIN, SCLK, MOSI, MISO, CS, dataOUT, DONE);
	end

initial begin: TEST_CASE	
     $dumpfile("spi_TB.vcd");
     $dumpvars(-1, uut);
     #(50000) $finish;
   end

endmodule
