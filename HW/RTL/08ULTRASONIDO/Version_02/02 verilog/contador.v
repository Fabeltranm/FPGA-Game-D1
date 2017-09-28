module contador		(
				
				output wire	[7:0] count,
				output wire	trigg,
				output wire	calculate,
				input	ECHO,
				input	ENABLE,
				input	CLKOUT,
				input	reset
			);
	reg [7:0] count0;
	reg pulso
	initial 
	begin
		count0=0;
		pulso=1;
		calculate=0;
	end
	
	always@( posedge CLKOUT )
	begin
		if(reset)
		begin
			pulso=1;
			calculate=0;
		end
		if(ENABLE && pulso)
		begin
			trigg<=1;
			if(trigg)
			begin
				pulso=0;
			end
		end
		else
		begin
			trigg=0;
			if(ECHO)
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
