module fifo_TB;

reg clk;
reg reset;

reg rd,wr;
reg [7:0] data_in;
fifo  uut(.reset(reset),.clk(clk),.rd(rd),.wr(wr),.data_in(data_in));




initial begin: TEST_CASE
     $dumpfile("fifo_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule //
