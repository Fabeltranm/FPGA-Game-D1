module shift #(parameter N=8)(input clk, input reset,input [N-1:0] d, output MOSI);


// declaracion  de  variables
reg [N-1:0] r_reg;
reg [N-1:0] r_next;


proyecto des(.MOSI(MOSI),reset(reset));

reg MOSI=1'b1;

//carga de dato
always @(d)
	r_next=d;


//register
always @(posedge clk, posedge reset)
	begin
		if (reset)
		r_reg<=0;
	else
		r_reg<=r_next;

end 

//Next_state
always  @(negedge reset, negedge clk)
	begin
		if(reset)
			r_next<=0;
		else	
			r_next<={r_reg[N-2:0], 1'b1};	
	end

// salida

always @(negedge clk)
	MOSI<=r_reg[N-1] ;




endmodule 
