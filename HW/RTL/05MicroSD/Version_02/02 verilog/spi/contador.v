module contador #(parameter N=8)(input sclkn, input reset, output reg DONE);

integer countD=0;



always @(posedge reset, posedge sclkn)
	begin
		if(reset)
			begin
			countD<=0;
			DONE<=0;
			end
		else if(countD==N)
			begin	
			countD<=0;
			DONE<=1;
			end
		else	
			begin
			countD<=countD+1;
			DONE<=0;
			end
	end






endmodule
