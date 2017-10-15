module contador		(
				output wire	[7:0] count,
				output wire	pulse,
				output wire	calculate,
				input	sign,
				input	ENABLE,
				input	CLKOUT,
				input	reset
			);
	reg [7:0] count0;
	reg pulso;
	initial 
	begin
		count0=0;
		pulse=0;
		calculate=0;
	end
	
	always@( reset || (posedge CLKOUT && ENABLE) )
	begin
		if(reset)
		begin
			count0=0;
			calculate=0;
			pulse=0;
		end
		//	Da la orden de mandar un pulso
		else
		begin
			if(ENABLE)
			begin
				pulse=1'b1;
			end
			//
			//	Cuenta el rango que tiene el pulso del ECHO del sensor
			//
			if(sign)
			begin
				count0=count0+1;
			end
			else
			begin
				assign count = count0;
				calculate = 1;
			end
		end
	end
endmodule
