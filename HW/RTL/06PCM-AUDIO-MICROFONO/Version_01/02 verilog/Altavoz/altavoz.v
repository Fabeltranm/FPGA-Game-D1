module altavoz
(
	input		enable,
	input		clk,
	input reg 	[15:0]  sregt,
	output		bclk,
	output		rlclk,
	output		dataout,
	input		reset,
	output		done

);

reg [0:16] count;
reg done;
reg rlclk=0;


div_freq df(.clk(clk), .reset(reset),.clkout(bclk));

always @(posedge  bclk, posedge enable)

	if (enable) 
	begin	
		done=0;
		count<=0;
		if (count<=15)  /*envia bit por bit*/
			begin
			dataout<= {dataout,sregt[14:0]};
			count<=count+1;
			end
		
		else 
			begin
			rlclk=!rlclk;     /* habilita canal R/L*/
			count<=0;   
			done=1;     /* confirma que ya se enviaron todos los bits*/
			end								
						
	end	
	else
	begin
	end



endmodule
