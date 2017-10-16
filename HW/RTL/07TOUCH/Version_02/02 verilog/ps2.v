module	ps2	(
			input		Rx,
			input		CLKOUT,
			output		Rx_error,
			output	[7:0]	DATA
		);
	reg	[8:0]	regis;
	reg	[7:0]	regis0;
	reg	i;
	reg	init;
	initial
	begin
		i=0;
		init=0;
		regis=0;
		regis0=0;
		DATA_error<=0;
	end
	always@(posedge CLKOUT)
	begin
		if(!DATA&&!i)
		begin
			init<=1;
		end
//		lectura			//
//		lectura			//
//		lectura			//
		if(init)
		begin
			regis[i]=data;
			i<=i+1;
		end
//		finalizar		//
//		finalizar		//
//		finalizar		//
		if(i==9)
		begin
			if(regis[8]0==!regis[7])
			begin
				i<=0;
				init<=0;
				DATA_error<=0;
				regis0<={regis[7:0]}
			end
			else
			begin
				DATA_error<=1;
				regis0<=0;
				init<=0;
				i<=0;
			end
		end
	end
	assign	DATA=regis0;
endmodule
