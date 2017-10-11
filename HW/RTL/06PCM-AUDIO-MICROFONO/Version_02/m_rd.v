module m_rd (reset,bclk,d_in,d_out);

	// Declaracion de variables

	input wire reset;
	input wire bclk;
	input wire d_in;
	output reg d_out;

	//Registro Audio

	always @(posedge bclk)
		begin
		  if (reset)
			begin
				d_out=0;
			end	
		  else
			begin
				d_in <= d_in << 1;
				d_out<= d_in;
			end
		end
endmodule
