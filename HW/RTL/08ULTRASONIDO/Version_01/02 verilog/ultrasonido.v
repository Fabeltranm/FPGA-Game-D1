module ultrasonido(input reset, input clk, input echo, output reg done, output reg trigger, output reg [31:0] distance);
	//Período de la FPGA T=10nS
	//Declaración de parámetros
	//Estos parámetros se encuentran  en nano segundos por el periodo de la FPGA 
	parameter divH = 10000; 
	parameter divL = 50000;
	
	//Contadores
	integer countF;
	integer countEcho;
	//integer distanceCm;
	
	//Trigger
	always @(posedge clk) begin 
		if (reset) 
		begin 
			done <= 0;
			countF <= 0;
			trigger <= 1;
			countEcho <=0;
		end 
		else 
		begin
			if (countF == divH+1)
				trigger <= 0;
			else
			begin
				if (countF == divL+1)
				begin
					trigger <= 1;
					countF <= 0;
				end
				else 
					countF <= countF +1;	
			end
		end
	
	if (echo == 0)	
	begin	
		distance <= countEcho/5800;
		countEcho<=0;
		done <= 1;
	end 
	else 
	begin 
			countEcho <= countEcho +1;
	end
	end
endmodule