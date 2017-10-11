module Control	(

				output 		DONE,
				output		data,
				output		write,
				input		clk,
				input 		Rx,
				input		reset,
				input		ENABLE

			 );

	reg [3:0]	count;
	
	initial
	begin
		DONE=0;
		data=0;
		write=1;
		count=3'b000;
	end

	always @(posedge reset, negedge clk)
	begin
		if (reset) 
		begin
			DONE=0;
			data=0;
			write=1;
			count=3'b000;
		end
		else if (ENABLE) 
		begin 	case(count)
				4'b0000:write<=1;
				4'b1001:write<=0;
				4'b1010:count<=0;
				default:(
					count<=count+1;
					data<=Rx;
				);
			endcase
		end
	end

endmodule
