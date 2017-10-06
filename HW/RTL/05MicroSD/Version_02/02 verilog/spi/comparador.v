module comparador (input EN,input DONE, output reg CS, output reg run);




always @(EN,DONE)
	begin
	if(EN&DONE==0)
		begin
		CS=0;
		run=1;
		end
	else if(DONE&EN)
		begin
		CS=1;
		run=0;
		end
	else	
		begin
		CS=1;
		run=0;
		end

	
	end






endmodule
