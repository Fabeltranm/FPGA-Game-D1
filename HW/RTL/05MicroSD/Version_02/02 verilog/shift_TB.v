module shift_TB;

	wire [7:0] dataRe;
	wire MOSI;
	reg sclk;
	reg reset;
	reg MISO;
	reg [7:0] dataSe;
	shift uut(.dataRe(dataRe),.reset(reset),.sclk(sclk),.MOSI(MOSI),.MISO(MISO),.dataSe(dataSe));
	
always
	begin
	sclk =1'b0;
	#5;
	sclk=1'b1;
	#5;
	end

initial
	begin
	MISO=1;
	reset=1;
	#1
	reset=0;
	#2;
        dataSe= 8'b10101101;
	#2
	MISO=1;
	#10
	MISO=0;
	#10
	MISO=0;
	#10
	MISO=1;
	#10
	MISO=1;
	#10
	MISO=0;
	#10
	MISO=1;
	#10
	MISO=0;

	end


initial begin: TEST_CASE	
     $dumpfile("shift_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule //
