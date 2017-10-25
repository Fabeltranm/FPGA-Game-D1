module Transmision_TB(
	reg TB_clk,
	reg [10:0]TB_din,
	reg TB_enable, 
  	reg TB_RW,
	reg count == 0;
	wire TB_Tx,
	wire TB_done, 
	wire TB_busy,
);
Trasmision uut( .clk(TB_clk), .din(TB_din), .enable(TB_enable), .RW(TB_RW), .Tx(TB_Tx, .done(TB_done), .busy(TB_busy) );
always 
begin
#20
TB_clk = ~TB_clk;
initial begin @(posedge TB_clk);
	count = count + 1;
	TB_din = 11'b10010101010;
	if (count < 12)
	TB_enable = 1;
	TB_RW = 1;
	else if (count < 23)
	TB_enable = 0;
	TB_RW = 1;
	else if (count < 34)
	TB_enable = 1;
	TB_RW = 0;
	else if (count < 45)
	TB_enable = 0;
	TB_RW = 0;
end
endmodule
