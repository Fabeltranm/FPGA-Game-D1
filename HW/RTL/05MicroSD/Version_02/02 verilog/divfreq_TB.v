`timescale 1ns / 1ns

module divfreq_TB;

reg clk;
reg run;
wire sclk;

divfreq uut(.clk(clk),.run(run),.sclk(sclk));

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
     $dumpfile("divfreq_TB.vcd");
     $dumpvars(-1, uut);
     #(2000) $finish;
   end

endmodule
