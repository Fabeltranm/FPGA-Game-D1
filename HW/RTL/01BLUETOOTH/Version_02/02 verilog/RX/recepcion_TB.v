module recepcion_TB();
reg clk_en = 1;
reg clk_50m = 0;
reg rw = 0;
reg [7:0] data = 0;
wire busy;
wire rdy;
wire rx;
reg [1:0] divcounter = 0; //registro para llevar el conteo

recepcion dut(.clk_en(clk_en),.clk_50m(clk_50m),.rw(rw),.data(data),.busy(busy),.done(done),.rx(rx));

//Generador de reloj fpga. Periodo 2 unidades
always #0 clk_en = ~clk_en;

//Generador de reloj_div 

always @(posedge clk_en) begin
  if (divcounter == 2)begin
        divcounter <= 0;
        clk_50m=1;
   end
  else begin
        divcounter <= divcounter + 1;
        clk_50m = 0;
   end
end
initial begin
#20
rw = 1;
data = 8'b00110011;
#1
rw = 0;
end



//-- Proceso al inicio
initial begin

  //-- Fichero donde almacenar los resultados
  $dumpfile("recepcion_TB.vcd");
  $dumpvars(0, recepcion_TB);

  # 400 $display("FIN de la simulacion");
  $finish;
end
endmodule

