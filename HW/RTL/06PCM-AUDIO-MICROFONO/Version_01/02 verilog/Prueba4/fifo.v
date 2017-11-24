module fifo # (parameter abits =6, dbits = 321)(
    input  reset, clock,
    input  rd, wr,
    input  [dbits-1:0] din,
    output [dbits-1:0] dout,
    output empty,
    output full
    
    );

//reg [abits-1:0] count;
reg [dbits-1:0] regarray[abits-1:0]; 
reg [abits-1:0] wr_reg, wr_next, wr_succ; //points to the register that needs to be written to
reg [abits-1:0] rd_reg, rd_next, rd_succ; //points to the register that needs to be read from
reg full_reg, empty_reg, full_next, empty_next;



always @ (posedge clock)  //at wr_reg location of regarray store what is given at din
 begin
  if(wr_en)
   regarray[wr_reg] <= din; 
 
 end
  

always @ (posedge clock)//always block for read operation
 begin
  if(db_rd)
   dout <= regarray[rd_reg];
 end

always @(posedge  clock)
begin
	if (reset)
	begin
	dout<=0;
	din<=0;
	empty<=1;
	full<=0;
	end
	else
	begin
	

	   case({wr,rd})
	    
	     
	    2'b01: //read
	     begin
	      if(count<=abits) 
	       begin
		rd_next = rd_succ;
		full_nex = 1'b0;
	       if(rd_succ == wr_reg) 
		 empty_next = 1'b1;  
	       end
	     end
	   2'b10: //write
	     begin
	       
	      if(~full) 
	       begin
		wr_next = wr_succ;
		empty_next = 1'b0;
		if(wr_succ == (2**abits-1)) 
		 full_next = 1'b1;   
	       end
	     end
	      
	  
	    endcase
	    
	
	end

end

endmodule

