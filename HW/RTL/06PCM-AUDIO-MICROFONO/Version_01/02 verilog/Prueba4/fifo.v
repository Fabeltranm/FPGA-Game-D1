module fifo
   #(
  	parameter abits = 3,
	parameter dbits = 8
   )
   (
    input  clock, reset,
    input  rd, wr,
    input  [dbits-1:0] din,
    output [dbits-1:0] dout,
    output empty, 
    output full
   );

   
   parameter depth = (1 << abits);

   //declaración de registros 
 
   reg [dbits-1:0] regarray [depth-1:0];// register array FIFO

   reg [abits-1:0] wr_reg, w_ptr_next;
   reg [abits-1:0] r_ptr_reg, r_ptr_next;
   reg full_reg, empty_reg, full_next, empty_next;
   wire wr_en;
	reg	[1:0]	orden;


   assign dout = regarray[r_ptr_reg];
   assign wr_en = wr&&!clock;

   assign full = full_reg;
   assign empty = empty_reg;

   always @(posedge clock) begin
      if (wr_en)
         regarray[wr_reg] <= din;
   end

   // fifo control logic
   // register for read and write pointers
   always @(posedge clock, posedge reset) begin
      if (reset)
         begin
            wr_reg <= 0;
            r_ptr_reg <= 0;
            full_reg <= 1'b0;
            empty_reg <= 1'b1;
         end
      else
         begin
            wr_reg <= w_ptr_next;
            r_ptr_reg <= r_ptr_next;
            full_reg <= full_next;
            empty_reg <= empty_next;
         end
   end

	always @(posedge clock)
	begin
		if(!wr&&rd)
		begin
			orden = 2'b01;
		end
		if(wr&&!rd)
		begin
			orden = 2'b10;
		end
		if(wr&&rd)
		begin
			orden = 2'b11;
		end
	end

   
   //always @(posedge reset or posedge wr or posedge rd)
	always @(posedge clock)
   begin
      if (reset) begin
	w_ptr_next =  0;
        r_ptr_next =  0;       
      end else begin
	      full_next = full_reg;
	      empty_next = empty_reg;
	      case (orden)
		 2'b01: // read
		    if (~empty_reg) // not empty
		       begin
		          r_ptr_next = r_ptr_reg + 1;
		          full_next = 1'b0;
		          if (r_ptr_next==wr_reg)
		             empty_next = 1'b1;
		       end
		 2'b10: // write
		    if (~full_reg) // not full
		       begin
		          w_ptr_next = wr_reg + 1;
		          empty_next = 1'b0;
		          if (w_ptr_next==r_ptr_reg)
		             full_next = 1'b1;
		       end
		 2'b11: // write and read
		    begin
		       w_ptr_next =  wr_reg + 1;
		       r_ptr_next = r_ptr_reg + 1;
		    end
	      endcase
	end
   end


  
endmodule



