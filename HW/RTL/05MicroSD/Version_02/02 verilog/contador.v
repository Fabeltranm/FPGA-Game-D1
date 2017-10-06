module contador #(parameter N=8)(input sclk, input reset, output reg DONE);

reg [N-1:0] countD;
reg [N-1:0] countA=0;

always @(posedge sclk, posedge reset)
	begin
		if(reset)

			countD<=0;

		else
			countD<=countA;			
	end

always @(negedge sclk, negedge reset)
	begin
		if(reset)
			countA<=0;

		else if(countA==N)	
			countA<=0;
		else
			countA<=countD+1;
	end


always @(negedge sclk)
	begin
		if(countA==N)
			DONE<=1;
		else
			DONE<=0;
	end




endmodule
