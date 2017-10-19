module comparador (input en,input done, output cs, output run);

reg cs=1;
reg run=0;


always @(en,done)
	begin
	if(en&done==0)
		begin
		cs=0;
		run=1;
		end
	else if(en&done==1)	
		begin
		cs=1;
		run=0;
		end
	else 	
		begin
		cs=1;
		run=0;
		end
		
	end

endmodule
