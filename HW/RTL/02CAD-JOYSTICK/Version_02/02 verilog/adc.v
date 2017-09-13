module joystick (D0, CS, Vin, done, busy, clk, reset);

    input CS;    //Enable
	input reset;	
	input Vin;	//Dato de Entrada
	input clk;
	output reg [7:0] D0; //Dato de salida
	output done;
	output busy;
end module
