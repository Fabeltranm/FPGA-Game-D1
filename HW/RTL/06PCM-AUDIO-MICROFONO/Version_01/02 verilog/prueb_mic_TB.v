module prueb_mic_TB;

reg [35:0] sdata;
reg [1:0] dataint;
reg clk;
reg enable;
reg mclk;
reg ws;
reg Done;


prueb_mic  uut(.enable(enable),.mclk(mckl),.done(donr),.clk(clk),.sdata(sdata),.ws(ws),.dataint(dataint));

always
begin
clk =1'b1;
#2;
clk=1'b0;
#2;
end

initial begin
dataint= 16'b10101110;

enable=0;
#4;
enable=1;
#3;


end


initial begin: TEST_CASE
     $dumpfile("prueb_mic_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule //
