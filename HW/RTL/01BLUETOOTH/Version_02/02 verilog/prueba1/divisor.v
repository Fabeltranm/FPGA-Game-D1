module divisor  #(parameter div = 100_000_000/(9600*16) )(input clk_in, output reg clk_out);
// div, numero por el que se divide la frecuencia de entrada
// div = 50k para generar f0 de 2kHz
localparam N = $clog2(div); //numero de bits necesarios para representar div en binario

reg [N-1:0] divcounter = 0; //registro para llevar el conteo 


always @(posedge clk_in) begin
  if (divcounter == div - 1)begin
	divcounter <= 0;
	clk_out=1;    
   end
  else begin 
	divcounter <= divcounter + 1;
	clk_out = 0;
   end
end    
endmodule
