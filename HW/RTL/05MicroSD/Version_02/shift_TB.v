module shift_TB;

	reg [7:0] d;
	wire MOSI;
	reg clk;
	reg reset;
	shift uut(.d(d),.reset(reset),.clk(clk),.MOSI(MOSI));
	
always
	begin
	clk =1'b0;
	#5;
	clk=1'b1;
	#5;
	end

initial begin
	
	reset=1;
	#1;
	reset=0;
	#1;
        d= 8'b10101101;


	end


initial begin: TEST_CASE
     $dumpfile("shift_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule //
