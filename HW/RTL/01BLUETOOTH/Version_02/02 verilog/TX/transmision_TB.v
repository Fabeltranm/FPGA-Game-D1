module transmision_TB;
reg clk_in=0;
reg clk_div;
reg rw = 0;
reg [7:0] din = 0;
reg reset;
wire busy;
wire done;
wire tx;

transmision dut(.clk_in(clk_in),.rw(rw),.din(din),.busy(busy),.done(done),.tx(tx),.reset(reset));
initial clk_in=0;

always #1 clk_in = ~clk_in;
initial begin
reset=1'b1;
#100
reset=1'b0;
#74000
reset=1'b1;
end

initial begin
#20
rw = 1;
din = 8'b00110011;
#4000
rw = 0;
end

initial begin

  $dumpfile("transmision_TB.vcd");
  $dumpvars(0, transmision_TB);

  $display("FIN de la simulacion");
  #100000 $finish;
end
endmodule

