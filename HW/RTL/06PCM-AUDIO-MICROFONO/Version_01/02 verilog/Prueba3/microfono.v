module microfono
(
	input 		reset,	
	output 		ledres,
	input		clk,
	output		bclk,
	output    reg   ws,
	output 	  reg	lrclk
        input           din,    
        output      reg dout,
	output          bclk2, 
	output reg	blck3 

);

wire bclk1;
assign bclk3=bclk1;
assign bclk2=bclk1;
assign bclk=bclk1;
reg [31:0] count= 0;
initial lrclk <= 0;
initial ws <= 0;

div_freq df(.clk(clk), .reset(reset),.clkout(bclk1),.led(ledres));

always @(posedge  mclk)
begin
	if (reset)
		begin
     		daout <= din;
    		end 
	else dout<=0;
	
end




endmodule
