module microfono
(
	input 		reset,	
	output 		ledres,
	input		clk,
	output		mclk,
	output    reg   micLRSel,
        input           micData,    
        output          ampPWM,
        output          ampSD,
	output reg	done,
	output 	        dout
	 

);
reg micData1;
wire mclk1;
wire mclk3;
wire mclk2;
wire mclk4;
wire mclk5;
assign mclk5=mclk4;
assign mclk4=mclk3;
assign mclk3=mclk2;
assign mclk2=mclk1;
assign mclk=mclk1;

wire dout1;
assign dout1=dout;

initial micLRSel <= 0;
initial done=0;
wire rd1;
assign rd1=done1;
pwm pw(.ampSD(ampSD), .reset(reset),.mclk(mclk3),.ampPWM(ampPWM),.clk(clk),.dout(dout1),.empty(empty),.done1(done1));
div_freq df(.clk(clk), .reset(reset),.clkout(mclk1),.led(ledres));

fifo fi(.reset(reset),.din(micData1),.dout(dout),.clock(mclk5),.rd(rd1),.wr(done),.empty(empty),.full(full));


always @(posedge  mclk)
begin

	if (reset)
		begin
     		micData1<=0;
    		end 
	else 
		begin
		micData1=micData;
		done=~done;
		end
	
	
end

endmodule

