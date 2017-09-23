// Declaracion de variables de entrada al sistema

module audio
  (
input             CLK // reloj de FPGA
input             ENABLE
input             D_IN // dato de entrada

// Declaracion de variables de salida del sistema

output             DONE // reloj de MAX98357A
output             WS
output             BCLK // reloj de SHP0645M4
    output  [17:0] D_OUT // dato de salida
  );
  
endmodule
