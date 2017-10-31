module bluetooth (Din, Dout, RW, done, busy, clk, Tx, Rx);

    input reg [7:0]Din;    //Dato de entrada 
	input RW;	//Read(0)or Write(1)
	input reg [7:0]Rx;	//Byte de entrada
	input clk;
	output reg [7:0] Dout; //Dato de salida
	output done;
	output busy;
	output reg [7:0]Tx;	//Byte de salida;
