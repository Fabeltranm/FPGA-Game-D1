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
	output wire [5:0] sregt


);
reg [0:127] count1=0;
reg [127:0] sregtc;

assign sregt = sregtc[127:122];

initial ws=0;

div_freq df(.clk(clk), .reset(reset),.clkout(mclk),.led(ledres));

always @(posedge  mclk)
begin

	if (reset)
	begin
		if(lr)
		begin
		ledlr=1;
		ledc=1;
		sregtc<= {sregtc[126:0],dataint};
		
				
		end
		else
		begin
		ledlr=0;
		ledc=0;
		end
	end
	 
	
end
 
endmodule
