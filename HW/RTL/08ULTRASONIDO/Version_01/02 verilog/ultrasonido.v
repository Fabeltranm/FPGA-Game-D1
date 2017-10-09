module ultrasonido(input reset, input clk, input echo, output done, output trigger, output reg [15:0] distance);
	//Declaración de parámetros
	parameter divH = 10;
	parameter divL = 40;
	
	//Contadores
	reg [7:0] countF;
	reg [31:0] countecho;
	
	//Trigger
	always @(posedge clk) begin 
		if (reset) begin 
		done <= 0
		countF <= 0;
		trigger <= 0;
		end else begin
			count <= count +1;
			if (count < divH)
				trigger = 1;
			else if (count < divL)
				trigger = 0;
			else 
				count <= 0;
		end
		
	//Echo
	always @(posedge clk) begin 
		if (echo == 0)	begin	
			distance <= countecho/5800;
			countecho<=0;
			done <= 1;
		end else 
			countecho<= count +1;
	end	
	
endmodule