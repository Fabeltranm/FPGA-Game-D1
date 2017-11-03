module controlador_TB;

reg dataint;
reg clk;
reg mclk;
reg ws;
reg reset;
reg lr;
reg PWM_out;

microfono uut(.reset(reset),.dataint(dataint),.clk(clk),.lr(lr));
pwm pw(.PWM_out(PWM_out));
always
begin

clk =1'b1;
#2;
clk=1'b0;
#2;
end

initial
begin
reset =1'b0;
#10;
reset =1'b1;

end

initial
begin
lr =1'b0;
#10;
lr =1'b1;
#2000;
lr =1'b0;
#2000;
lr =1'b1;
end

initial begin
dataint = 1'b0;
#100 dataint = 1'b1;
#150 dataint = 1'b0;
#150 dataint = 1'b1;
#150 dataint = 1'b0;
#150 dataint = 1'b0;
#150 dataint = 1'b1;
#150 dataint = 1'b0;
#150 dataint = 1'b1;
end
	
initial begin: TEST_CASE
     $dumpfile("controlador_TB.vcd");
     $dumpvars(-1, uut, pw);
     #(100000) $finish;
   end

endmodule //

