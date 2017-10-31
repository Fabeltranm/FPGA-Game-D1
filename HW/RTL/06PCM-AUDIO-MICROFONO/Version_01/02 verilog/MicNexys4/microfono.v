module microfono
(
	output reg	ledlr,
	output 		ledres,
	output 	reg	ledc,
	input		clk,
	output		mclk,
	input		lr,
	input		dataint,
	input		reset,
	output reg [5:0] sregt//sregtl
	//output reg [5:0] sregtr


);
reg [0:127] count1=0;
reg [127:0] sregtc;

div_freq df(.clk(clk), .reset(reset),.clkout(mclk),.led(ledres));

always @(posedge  mclk)
begin

	if (reset)
	begin
		if(lr)
		begin
		ledlr=1;
			if (count1<=5)  /* guarda 5 bits */
			begin
		
			ledc=1;
			sregt<= {sregt[4:0],dataint};
			sregtc<= {sregtc[126:0],dataint};
			count1<=count1+1;
			end
		
			else 
			begin
				if(count1<=127)
				begin
				ledc=0;
				sregtc<= {sregtc[126:0],dataint};
				count1<=count1+1;
				end
				else
				begin
				count1<=0;
				end
			end
		end
		else
		begin
		ledlr=0;
		end
	end
	 
	
end
 
endmodule
