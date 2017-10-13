module transmision_TB();

//Registro para generar la señal de reloj
reg clk_in = 1;
reg clk_div=0;
//wire clk_out;
reg rw = 0;
reg [7:0] din = 0;
wire busy;
wire done;
wire tx;
reg [1:0] divcounter = 0; //registro para llevar el conteo de clk_div

//Instanciar transmision
transmision dut(.clk_in(clk_in),.clk_div(clk_div),.rw(rw),.din(din),.busy(busy),.done(done),.tx(tx));

//Generador de reloj fpga. Periodo 2 unidades
always #1 clk_in = ~clk_in;

//Generador de reloj_div 

always @(posedge clk_in) begin //arreglar!
  if (divcounter == 2)begin
        divcounter <= 0;
        clk_div=1;
   end
  else begin
        divcounter <= divcounter + 1;
        clk_div = 0;
   end
end
initial begin
#20
rw = 1;
din = 8'b01010101;
#1
rw = 0;
#1
rw = 1;
din = 8'b11110111;
end



//-- Proceso al inicio
initial begin

  //-- Fichero donde almacenar los resultados
  $dumpfile("transmision_TB.vcd");
  $dumpvars(0, transmision_TB);

  # 400 $display("FIN de la simulacion");
  $finish;
end
endmodule

