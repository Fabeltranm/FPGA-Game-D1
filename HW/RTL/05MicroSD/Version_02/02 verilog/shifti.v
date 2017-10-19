module shifti #(parameter N=8)(input sclkn, input reset, input [N-1:0] datase, output reg mosi,input enable);


// declaracion  de  variables


reg [N-1:0] dezi;


//desplazamiento izquierda
always  @(posedge reset,posedge sclkn)
	begin
		if(reset)
			begin
			dezi<=datase;
			mosi<=1;
			end
		else if (enable) 
			begin
			mosi<=dezi[N-1];
			dezi<={dezi[N-2:0], 1'b1};
			end	

	end






endmodule 
