module ultrasonido(input reset, input clk, input echo, output reg done, output reg trigger, output reg [31:0] distance);
	//Declaración de parámetros
	parameter divH = 10;
	parameter divL = 40;
	
	//Contadores
	integer countF;
	integer countecho;
	
	//Trigger
	always @(posedge clk) begin 
		if (reset) begin 
		done <= 0;
		countF <= 0;
		trigger <= 0;
		end else begin
			countF <= countF +1;
			if (countF < divH)
				trigger <= 1;
			else if (countF < divL)
				trigger <= 0;
			else 
				countF <= 0;
		end
	
	if (echo == 0)	begin	
			distance <= countecho/5800;
			countecho<=0;
			done <= 1;
		end else begin 
			countecho <= countecho +1;
		end
	end
endmodule