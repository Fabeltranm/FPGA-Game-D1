module	divisor (
					input		reset,
					input	[7:0]	count,
					input		calculate,
					output		DONE,
					output	[7:0]	d
							);
	reg [7:0] registro;
	initial
	begin
		registro=0;
		d=0;
		DONE=0;
	end
	always@(calculate || reset)
	begin
		if(reset)
		begin
			registro=0;
			d=0;
			DONE=0;
		end
		else
		begin
			assign registro=count;
			assign d = registro[7:0] >> 1;
			DONE = 1;
		end
	end


endmodule
