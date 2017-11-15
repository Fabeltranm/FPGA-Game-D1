module pwm
(

	input			clk,
	input 			reset,
	input  [15:0]		dout,
	output			mclk,
        output  		ampPWM,
        output  reg     	ampSD,
	output  reg     	done

);


reg [16:0] count=0;
reg [15:0] sreg;
wire init;
initial done<=0;
initial ampSD <= 1;
initial sreg<=dout;

assign init =(count==0)?1:0;
assign ampPWM = sreg[15];

div_freq df(.clk(clk), .reset(reset),.clkout(mclk),.led(ledres));

always @(posedge  mclk)
begin
if (init)
sreg <= dout;	
	if (reset)
  	done<=0;
	else 
	begin
		if (count<=15)  /*envia bit por bit*/
			begin
			sreg<=sreg<<1;		
			count<=count+1;
			done<=1;
			end
		else
		count<=0;
	end
end




endmodule
