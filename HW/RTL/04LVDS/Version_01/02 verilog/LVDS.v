module LVDS(
    
	 input CLK,

	 output Channel1_P,
	 output Channel1_N,
	 output Channel2_P,
	 output Channel2_N,
	 output Channel3_P,
	 output Channel3_N,
	 output CLK_P,
	 output CLK_N,
	 output reg LED
    );


reg [7:0] RGBimage;
reg [30:0]  Contador=0;

parameter ScreenX = 1366;
parameter ScreenY = 768;
