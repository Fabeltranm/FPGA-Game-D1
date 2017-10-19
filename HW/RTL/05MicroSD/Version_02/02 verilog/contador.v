module contador #(parameter N=8)(input sclkn, input reset, output reg done);

integer countd=0;



always @(posedge sclkn)
	begin
		if(reset)
			begin
			countd<=0;
			done<=0;
			end
		else if(countd==N)
			begin	
			countd<=0;
			done<=1;
			end
		else	
			begin
			countd<=countd+1;
			done<=0;
			end
	end






endmodule
