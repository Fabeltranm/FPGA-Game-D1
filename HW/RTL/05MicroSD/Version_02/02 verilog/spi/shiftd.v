module shiftd #(parameter N=8)(input sclk, input reset, output reg [N-1:0] dataRe, input MISO);

reg [N-1:0] dezD=0;



//desplazamiento derecha

always @(posedge reset, posedge sclk)
	begin

		if(reset)
			begin
			dezD<=0;
			end
		else
			begin
			dezD<={MISO,dezD[N-1:1]};
			end
	end


always @(dezD)
	dataRe=dezD;
	
endmodule
