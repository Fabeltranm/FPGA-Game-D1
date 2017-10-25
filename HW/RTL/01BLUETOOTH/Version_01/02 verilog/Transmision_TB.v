module Transmision_TB(
	reg TB_clk,
	reg [10:0]TB_din,
	reg TB_enable, 
  	reg TB_RW,
	wire TB_Tx,
	wire TB_done, 
	wire TB_busy,
);
Trasmision( .clk(TB_clk), .din(TB_din), .enable(TB_enable), .RW(TB_RW), .Tx(TB_Tx, .done(TB_done), .busy(TB_busy) );
always 
begin
#20
TB_clk = ~TB_clk;
initial begin
TB_din = 11'b10010101010;
TB_enable = 1;
#240
TB_enable = 0;
#240
TB_RW = 1;
#240
TB_RW = 0;
#240
end
endmodule
