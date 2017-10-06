`timescale 1ns/1ns

module contador_TB;

reg reset;
reg sclk;
wire DONE;

contador uut(.reset(reset),.sclk(sclk),.DONE(DONE));

always
	begin
	sclk=0;
	#10;
	sclk=1;
	#10;
	end

initial
	begin
	reset=1;
	#4
	reset=0;
	end
initial begin: TEST_CASE	
     $dumpfile("contador_TB.vcd");
     $dumpvars(-1, uut);
     #(1000) $finish;
   end

endmodule

