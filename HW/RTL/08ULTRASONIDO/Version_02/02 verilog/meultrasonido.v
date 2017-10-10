module  meultrasonido  (
                            input CLKOUT2,
                            input orden,
                            output  ENABLE,
                            output  reset
                          );
  reg funcione;
  initial
  begin
    funcione=0;
  end
  always@(posedge CLKOUT2 && orden)
  begin
    case(orden)
      1'b0: funcione<=1'b0;
      1'b1: funcione<=1'b1;
      default: funcione <=  1'b0;
    endcase
    if(funcione)
    begin
      ENABLE <=  1;
      reset  <=  0;
    end
    if(!funcione)
    begin
      reset  <=  1;
      ENABLE <=  0;
    end
  end
endmodule
