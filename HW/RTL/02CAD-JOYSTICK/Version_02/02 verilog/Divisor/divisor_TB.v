//`timescale 10ns/100ns; 
module divisor_TB();
    
//-- Registro para generar la señal de reloj
reg clk = 0;
wire clk_out;
    
//-- Instanciar el divisor
divisor dut(.clk_in(clk),.clk_out(clk_out));
    
//-- Generador de reloj. Periodo 2 unidades
always #1 clk = ~clk;
    
//-- Proceso al inicio
initial begin
    
  //-- Fichero donde almacenar los resultados
  $dumpfile("divisor_TB.vcd");
  $dumpvars(0, divisor_TB);
    
  # 100100 $display("FIN de la simulacion");
  $finish;
end
endmodule
