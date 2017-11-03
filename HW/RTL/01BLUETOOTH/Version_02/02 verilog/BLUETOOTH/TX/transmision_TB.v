module transmision_TB;

//Registro para generar la señal de reloj
reg clk_in=0;
reg clk_div;
//wire clk_out;
reg rw = 0;
reg [7:0] din = 0;
reg reset;
wire busy;
wire done;
wire tx;//registro para llevar el conteo

//Instanciar transmision
transmision dut(.clk_in(clk_in),.rw(rw),.din(din),.busy(busy),.done(done),.tx(tx),.reset(reset));
initial clk_in=0;
//Generador de reloj fpga. Periodo 2 unidades
always #1 clk_in = ~clk_in;
initial begin
reset=1'b0;
#10
reset=1'b1;
end

initial begin
#20
rw = 1;
din = 8'b00110011;
#4000
rw = 0;
end

//-- Proceso al inicio
initial begin

  //-- Fichero donde almacenar los resultados
  $dumpfile("transmision_TB.vcd");
  $dumpvars(0, transmision_TB);

  #100000 $display("FIN de la simulacion");
  $finish;
end
endmodule

