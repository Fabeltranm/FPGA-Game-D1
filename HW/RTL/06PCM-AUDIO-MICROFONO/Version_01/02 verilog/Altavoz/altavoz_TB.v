module altavoz_TB;

reg dataout;
reg clk;
reg enable;
reg bclk;
reg rlclk;
reg done;
reg reset;
altavoz uut(.enable(enable),.reset(reset),.sregt(sregt),.clk(clk));

always
begin

clk =1'b1;
#2;
clk=1'b0;
#2;
end

initial
begin
reset =1'b1;
#10;
reset =1'b0;
end

initial begin
enable=1;
end 

initial begin

sregt=16'b1011000110110001
end
	
initial begin: TEST_CASE
     $dumpfile("altavoz_TB.vcd");
     $dumpvars(-1, uut);
     #(100) $finish;
   end

endmodule //

