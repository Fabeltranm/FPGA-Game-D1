module prueb_mic_TB;

reg [35:0] sdata;
reg dataint;
reg clk;
reg enable;
reg mclk;
reg ws;
reg done;
prueb_mic  uut(.enable(enable),.reset(reset),.dataint(dataint),.clk(clk));

always
begin
clk =1'b1;
#2;
clk=1'b0;
#2;
end

initial begin
enable=1;

#1 dataint = 1'b0;
#2 dataint = 1'b0;
#3 dataint = 1'b1;
#4 dataint = 1'b1;
#5 dataint = 1'b0;
#6 dataint = 1'b0;
#7 dataint = 1'b1;
#8 dataint = 1'b0;
#9 dataint = 1'b0;
#10 dataint = 1'b0;
#11 dataint = 1'b0;
#12 dataint = 1'b1;
#13 dataint = 1'b1;
#14 dataint = 1'b0;
#15 dataint = 1'b0;
#16 dataint = 1'b1;
#17 dataint = 1'b0;
#18 dataint = 1'b0;
end
	
initial begin: TEST_CASE
     $dumpfile("prueb_mic_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule //

