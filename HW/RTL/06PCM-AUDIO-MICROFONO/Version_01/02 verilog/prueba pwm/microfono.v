module microfono
(
	output reg	ledlr,
	output 		ledres,
	output 	reg	ledc,
	input		clk,
	output		mclk,
	input		lr,
	output	reg	ws,
	input		dataint,
	input		reset,
	output reg [127:0] sregt,
	output 	reg	done


);
reg [0:127] count1=0;
initial ws=0;
initial done=0;

div_freq df(.clk(clk), .reset(reset),.clkout(mclk),.led(ledres));

always @(posedge  mclk)
begin

	if (reset)
	begin
		if(lr)
		begin
		ledlr=1;
			if (count1<=127)  /* guarda 5 bits */
			begin
			done=0;
			ledc=1;
			sregt<= {sregt[126:0],dataint};
			count1<=count1+1;
			end
		
			else 
			begin
			ledc=0;
			done=1;	
			count1<=0;
				
			end
		end
		else
		begin
		ledlr=0;
		end
	end
	 
	
end
 
endmodule
