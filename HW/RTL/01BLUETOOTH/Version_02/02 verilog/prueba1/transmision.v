module transmision (input rw, input wire clk_in, input wire clk_div, input wire [7:0] din, output busy, output done, output reg tx);
/*rw nos dice cuando se hace una peticion para recibir o transmitir
clk_in es el reloj de la fpga
clk_div es el reloj del divisor que se usa para controlar el baud rate (bits transmitidos por segundo)
din es el dato a transmitir (obviamente)
busy se pone en 1 cuando empieza la transmision y vuelve a 0 cuando termina
done se pone en 1 cuando finaliza la transmision
tx es la linea por donde se envia bit a bit din
*/

parameter count = 8; //cantidad de bits que se evian. :v

//reg [2:0] counter = 0; //registro para llevar el conteo

initial begin
	tx = 1'b1; //cuando no esta transmitiendo tx siempre se mantiene en 1 :v
end

parameter STATE_IDLE	= 2'b00; //estado inactivo 
parameter STATE_START	= 2'b01; //justo antes de comenzar la transmision es cuando se envia el bit de start por tx
parameter STATE_DATA	= 2'b10; //comienzo de la transmision se envia bit a bit din por tx
parameter STATE_STOP	= 2'b11; //finaliza la transmision se envia el bit de stop por tx

reg [7:0] data = 8'b11111111; // valor porque YOLO, este valor no importa :v 
reg [2:0] bitpos = 0; // posicion del bit que se envia por tx
reg [1:0] state = STATE_IDLE; //al iniciar el modulo de transmision se encuentra inactivo (al principio todo era silecio :v)

always @(posedge clk_in) begin
	case (state)
	STATE_IDLE: begin
		if (rw) begin //si se hace una peticion de transmision el estado cambia a start
			state <= STATE_START;
			data <= din;
			bitpos <= 0;
		end
	end
	STATE_START: begin
		if (clk_div) begin
			tx <= 1'b0; //se envia el bit de start
			state <= STATE_DATA;
		end
	end
	STATE_DATA: begin
		if (clk_div) begin
			if (bitpos == count-1)begin
				tx<=data[bitpos]; 
				state <= STATE_STOP;
			end
			else begin
				tx<=data[bitpos]; //hacer este cambio cuando todo funcine :v 
				bitpos <= bitpos + 1;
			end
			//se envian los 8 bits de din con el baud rate fijado por clk_div y se pasa a stop
			//tx <= data[bitpos]; Da lo mismo. :v
		end
	end
	STATE_STOP: begin
		if (clk_div) begin
			tx <= 1'b1; // se envia el bit de estop y se retorna al estado inactivo.
			state <= STATE_IDLE;
		end
	end
	default: begin // por si acas. :v
		tx <= 1'b1;
		state <= STATE_IDLE;
	end
	endcase
end

assign busy = (state != STATE_IDLE); //busy se mantiene en 1 siempre que el estado no sea inactivo
assign done = (state == STATE_STOP); //done se pone en 1 al tarminar la transmision

endmodule
