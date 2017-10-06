module comparador_TB;

reg EN;
reg reset;
wire CS;
wire run;

comparador uut(.EN(EN),.CS(CS),.run(run),.reset(reset));

initial
	begin
	reset=0;
	EN=0;
	#5;
	EN=1;
	#10;
	reset=1;
	#10;
	reset=0;
	#10;
	EN=0;
	end

initial begin: TEST_CASE	
     $dumpfile("comparador_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule

