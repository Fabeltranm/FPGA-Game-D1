module div_freq_TB;

  reg clk;
 reg reset;
div_freq uut(.clk(clk), .reset(reset));

initial begin
  clk =0;
reset =1; #10;	
  reset=0;
  
end


always clk = #1 ~clk;

initial begin: TEST_CASE
     $dumpfile("div_freq_TB.vcd");
     $dumpvars(-1, uut);
     #(10000) $finish;
   end

endmodule //
