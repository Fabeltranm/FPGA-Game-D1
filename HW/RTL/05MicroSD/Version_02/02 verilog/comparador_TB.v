module comparador_TB;

reg EN;
reg DONE;
wire CS;
wire run;

comparador uut(.EN(EN),.CS(CS),.run(run),.DONE(DONE));

initial
	begin
	DONE=0;
	EN=0;
	#5;
	EN=1;
	#10;
	DONE=1;
	#10;
	DONE=0;
	#10;
	EN=0;
	end

initial begin: TEST_CASE	
     $dumpfile("comparador_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule

