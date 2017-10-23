`timescale 1ns / 1ns
module audio_TB;

		reg clk;
		reg [15:0]d_in;
		reg enable;
		
		reg reset;
		reg [15:0]data;
		
			

audio a1(.enable(enable),.d_in(d_in),.reset(reset),.clk(clk));

		always
		begin

		clk =1'b1;
		#2;
		clk=1'b0;
		#2;
		end

		initial
		begin
		reset =1'b1;
		d_in=16'b000000000000000;
		enable=0;
		#5;
		reset =1'b0;
		d_in=16'b101101001100000;
		enable=1;
		end 

	
initial begin: TEST_CASE
     $dumpfile("audio_TB.vcd");
     $dumpvars(-1, a1);
     #(1000) $finish;
   end

endmodule


