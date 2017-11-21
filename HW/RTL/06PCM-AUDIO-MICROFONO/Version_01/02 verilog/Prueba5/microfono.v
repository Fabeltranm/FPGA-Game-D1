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
	input		rd,wr,
	output		empty,
	output		full
	//output 	  [7:0] dout,
	 

);

wire [7:0] dout;
wire [7:0] dout1;
wire mclk1;
wire mclk2;
wire mclk3;
reg [7:0] sregt;

fifo fi(.reset(reset),.din(sregt),.dout(dout),.clock(mclk2),.rd(rd),.wr(wr),.empty(empty),.full(full));
pwm pw(.ampSD(ampSD), .reset(reset),.mclk(mclk1),.ampPWM(ampPWM),.clk(clk),.dout(dout1));
div_freq df(.clk(clk), .reset(reset),.clkout(mclk3),.led(ledres));


reg [7:0] count;
assign mlck3=mclk1;
assign mclk2=mclk1;
assign mclk1=mclk;

assign dout1=dout;

initial micLRSel <= 0;
//initial ampSD <= 1;


always @(posedge  mclk)
begin
count<=0;
	if (reset)
		begin
     		sregt<=0;
    		end 
	else 
		begin
		if(count<=6)
			begin
			sregt<= {sregt[6:0],micData};	
			count<=count+1;	
			end
			else		
			begin
			sregt<=0; 
			count<=0;
			end
		end
	
	
end

endmodule

