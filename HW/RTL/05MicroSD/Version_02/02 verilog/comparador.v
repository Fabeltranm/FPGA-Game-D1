module comparador (input en,input done, output cs, output run);

reg cs=1;
reg run=0;


always @(en,done)
	begin
	if(~en&~done)
		begin
		cs=1;
		run=0;
		end
	else if(~done&en)	
		begin
		run=1;
		cs=0;
		end
	else if (done&~en)	
		begin
		run=0;
		cs=1;
		end
	else if (en&done)
		begin
		run=0;
		cs=0;
		end
		
	end

endmodule
