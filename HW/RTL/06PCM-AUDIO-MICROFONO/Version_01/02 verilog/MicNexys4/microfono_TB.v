
module microfono_TB;

reg dataint;
reg clk;
reg mclk;
reg ws;
reg reset;
reg lr;
microfono uut(.reset(reset),.dataint(dataint),.clk(clk),.lr(lr));

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
initial
begin
lr =1'b1;
#10;
lr =1'b0;
end

initial begin
dataint = 1'b0;
#40 dataint = 1'b1;
#40 dataint = 1'b0;
#40 dataint = 1'b1;
#40 dataint = 1'b0;
#40 dataint = 1'b0;
#40 dataint = 1'b1;
#40 dataint = 1'b0;
#40 dataint = 1'b1;
end
	
initial begin: TEST_CASE
     $dumpfile("microfono_TB.vcd");
     $dumpvars(-1, uut);
     #(10000) $finish;
   end

endmodule //

