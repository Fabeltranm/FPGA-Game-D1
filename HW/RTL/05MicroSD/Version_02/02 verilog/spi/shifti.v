module shifti #(parameter N=8)(input sclkn, input reset, input [N-1:0] dataSe, output reg MOSI);


// declaracion  de  variables


reg [N-1:0] dezI;



//carga de dato

always @(dataSe)
	dezI=dataSe;



//desplazamiento izquierda
always  @(posedge reset, posedge sclkn)
	begin
		if(reset)
			begin
			MOSI<=1;
			end
		else	
			begin
			MOSI<=dezI[N-1];
			dezI<={dezI[N-2:0], 1'b1};
			end	
	end






endmodule 
