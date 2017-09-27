module Registro_desplazamiento (RESET,LOAD,D_IN,D_OUT);

parameter N  = 17;

// ENTRADAS Y SALIDAS DEL SISTEMA

input wire RESET;
input wire LOAD;
input wire D_IN;
reg [N:0]ALMACENAR;
integer COUNT;

output reg [N:0] D_OUT;

//-- Registro

always @(posedge LOAD or RESET)
begin
  if (RESET)
begin
    D_IN=0;
    D_OUT=0;
    COUNT=0;
end	
  else
  begin
    if(COUNT==18)
    begin
      COUNT=1;
      D_OUT=ALMACENAR;
      ALMACENAR=0;
      ALMACENAR[COUNT-1]=D_IN;
    end
    else
    begin 
      COUNT=COUNT+1;
      ALMACENAR[COUNT-1] = D_IN;
    end
  end
end
endmodule
