module shift_TB;

	reg [7:0] d;
	wire q;
	reg [1:0] ctrl;
	reg clk;
	reg reset;
	shift uut(.d(d),.ctrl(ctrl),.reset(reset),.clk(clk),.q(q));
	
always
	begin
	clk =1'b1;
	#2;
	clk=1'b0;
	#2;
	end

initial begin
	d= 8'b10101101;

	reset=1;
	#4;
	reset=0;
	#3;
	ctrl = 2'b00;
	#5;
	ctrl =2'b11;
	#20;
	ctrl =2'b01;



	end


initial begin: TEST_CASE
     $dumpfile("shift_TB.vcd");
     $dumpvars(-1, uut);
     #(200) $finish;
   end

endmodule //
