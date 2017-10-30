module Transmision(
	input clk,
	input [10:0]din,
	input enable, 
  input RW,
	output Tx,
	output done,
	output busy
);

	reg delay;                           //registro para generar nustra señal de relog
	reg[12:0]cont =13'b1111111111111;    //contador para generar nustra señal de relog
	reg[11:0]din= 12'b101010101011;        // registro de dezplazamiento
  reg SI=1'b0;
always@(posedge clk)
begin
if(cont>=5207)
c<=0;
else
cont<=cont+1;
end

always@(cont)
begin
if(c<=(5208/2)-1)
delay<=1;
else
delay<=0;
end

always@(posedge delay)

begin
if(enable && rw)
din<={SI,din[1:11]};
end
assign Tx=din[0];


endmodule
