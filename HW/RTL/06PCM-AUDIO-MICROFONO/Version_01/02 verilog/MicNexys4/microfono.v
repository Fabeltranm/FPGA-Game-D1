module microfono
(
	output reg	ledlr,
	output 		ledres,
	input		clk,
	output		mclk,
	input		lr,
	output	reg	ws,
	input		dataint,
	input		reset,
	output reg [5:0] sregtl,
	output reg [5:0] sregtr


);
reg [0:5] count1<=0;
reg [0:5] count<=0;
initial ws=0;
initial ledlr=0;

div_freq df(.clk(clk), .reset(reset),.clkout(mclk),.led(ledres));

always @(posedge  mclk, posedge lr)
begin

	//if (reset)
	//begin
	
	//end
	 
	//else
	//begin
	
	
		
		if (count1<=5)  /* guarda 5 bits */
		begin
		
		ledlr=1;
		sregtr<= {sregtr[4:0],dataint};
		count1<=count1+1;
		end
		
		else 
		begin
		
		end
	//end

	
end

always @(negedge  mclk, negedge lr)
begin

	//if (reset)
	//begin
	
	//end
	 
	//else
	//begin
	//count<=0;
	
		if (count<=5)  /* guarda 5 bits */
		begin
		ledlr=0;
		sregtl<= {sregtl[4:0],dataint};
		count<=count+1;
		end
	
	//end

	
end


endmodule
