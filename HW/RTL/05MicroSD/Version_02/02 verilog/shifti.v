module shifti #(parameter N=8)(input sclk,input sclkn, input cs,input reset, input [N-1:0] datase, output reg mosi,input enable);


// declaracion  de  variables

wire send;
reg [N-1:0] dezi;

assign send=~cs; 

//desplazamiento izquierda
always  @(posedge reset,posedge sclk)
	begin
		if(reset)
			begin
			dezi<=datase;
			
			end
		else if (enable) 
			begin
			dezi<={dezi[N-2:0], 1'b1};
			end	

	end


always @(posedge reset,posedge sclkn,posedge send)
	begin
		
		if(reset)
		mosi<=1;
		else if(send)
		mosi<=dezi[N-1];

		
	end


endmodule 
