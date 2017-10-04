module prueb_mic_TB;

reg dataint;
reg clk;
reg enable;
reg mclk;
reg ws;
reg done;
reg reset;
prueb_mic  uut(.enable(enable),.reset(reset),.dataint(dataint),.clk(clk));

always
begin
clk =1'b1;
#2;
clk=1'b0;
#2;
end

always
begin
reset =1'b1;
#130;
reset =1'b0;
#130;
end

initial begin
enable=0;
#2 enable=1;
end 
initial begin
dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b0;
#75 dataint = 1'b1;
#4 dataint = 1'b1;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b1;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b1;
#4 dataint = 1'b1;
#4 dataint = 1'b0;
#4 dataint = 1'b0;
end
	
initial begin: TEST_CASE
     $dumpfile("prueb_mic_TB.vcd");
     $dumpvars(-1, uut);
     #(300) $finish;
   end

endmodule //

