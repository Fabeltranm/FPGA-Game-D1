module shiftd #(parameter N=8)(input sclk, input reset, output reg [N-1:0] datare, input miso);

reg [N-1:0] dezd=0;



//desplazamiento derecha

always @(posedge reset, posedge sclk)
	begin

		if(reset)
			begin
			dezd<=0;
			end
		else
			begin
			dezd<={miso,dezd[N-1:1]};
			end
	end


always @(dezd)
	datare=dezd;
	
endmodule
