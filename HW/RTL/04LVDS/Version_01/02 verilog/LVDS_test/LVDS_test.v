`timescale 1ns / 1ps

module LVDS_test(
    input clk,

	 output channel1_p,
	 output channel1_n,
	 output channel2_p,
	 output channel2_n,
	 output channel3_p,
	 output channel3_n,
	 output channel4_p,
	 output channel4_n,
	 output clock_p,
	 output clock_n,
	 output reg led
    );


reg [30:0]  Contador=0;

parameter ScreenX = 1280;
parameter ScreenY = 800;

parameter BlankingVertical = 12;
parameter BlankingHorizontal = 50;

wire clo,clk6x,clk_lckd, clkdcm;

reg [7:0] Red   = 8'h0;
reg [7:0] Blue  = 8'h0;
reg [7:0] Green = 8'hFF;



reg [10:0] ContadorX = ScreenX+BlankingHorizontal-5; // Contador de colunas
reg [10:0] ContadorY = ScreenY+BlankingVertical; // Contador de lineas



assign clkprueba =clk6x;

wire HSync =((ContadorX>ScreenX) & (ContadorX<(ScreenX+(BlankingHorizontal/2))))?0:1;
wire VSync =((ContadorY>ScreenY) & (ContadorY<(ScreenY+(BlankingVertical/2))))?0:1;
wire DataEnable = ((ContadorX<ScreenX) & (ContadorY<ScreenY));

always @(posedge clk6x) begin

	ContadorX <= (ContadorX==(ScreenX+BlankingHorizontal)) ? 0 : ContadorX+1;
	if(ContadorX==(ScreenX+BlankingHorizontal)) ContadorY <= (ContadorY==(ScreenY+BlankingVertical)) ? 0 : ContadorY+1;

end

DCM_SP #(
//	.CLKIN_PERIOD	(63), // 64MHz Clock from 16MHz Input
	.CLKIN_PERIOD	(83),  // from 12MHz Input
	.CLKFX_MULTIPLY	(6),   // 72 MHz Clock
	.CLKFX_DIVIDE 	(1)
	)
dcm_main (
	.CLKIN   	(clk),
	.CLKFB   	(clo),
	.RST     	(1'b0),
	.CLK0    	(clkdcm),
	.CLKFX   	(clk6x),
	.LOCKED  	(clk_lckd)
);


BUFG 	clk_bufg	(.I(clkdcm), 	.O(clo) ) ;


video_lvds videoencoder (
    .DotClock(clk6x), 
    .HSync(HSync), 
    .VSync(VSync), 
    .DataEnable(DataEnable), 
    .Red(Red), 
    .Green(Green), 
    .Blue(Blue), 
    .channel1_p(channel1_p), 
    .channel1_n(channel1_n), 
    .channel2_p(channel2_p), 
    .channel2_n(channel2_n), 
    .channel3_p(channel3_p), 
    .channel3_n(channel3_n), 
    .channel4_p(channel4_p), 
    .channel4_n(channel4_n), 
    .clock_p(clock_p), 
    .clock_n(clock_n)
    );

//Video Generator

always @(posedge clk6x)

begin
	if(ContadorX < ScreenX/8) begin            Blue <= 8'b00; Red 	<= 8'b0;  Green	<= 8'b0;
	end else if(ContadorX < ScreenX/4)   begin Blue <= 8'hFF; Red 	<= 8'b0;  Green	<= 8'b0;
	end else if(ContadorX < 3*ScreenX/8) begin Blue <= 8'b00; Red 	<= 8'HFF; Green	<= 8'b0;
	end else if(ContadorX < ScreenX/2)   begin Blue	<= 8'hff; Red 	<= 8'hff; Green <= 8'b0;
	end else if(ContadorX < 5*ScreenX/8) begin Blue <= 8'b0;  Red 	<= 8'b0;  Green <= 8'hff;
	end else if(ContadorX < 3*ScreenX/4) begin Blue <= 8'hff; Red 	<= 8'b0;  Green <= 8'hff;
	end else if(ContadorX < 7*ScreenX/8) begin Blue <= 8'b0;  Red 	<= 8'hff; Green <= 8'hff;
	end else begin Blue <= 8'b11111111; Red <= 8'hff; Green <= 8'b11111111;
	end 
end

// test led

always @(posedge clk6x)
begin
	Contador <= Contador + 1;
        if (Contador==36000000)
	begin
		led <= ~led;
		Contador <= 0;
	
        end
end
endmodule
