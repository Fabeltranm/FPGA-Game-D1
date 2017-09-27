module camara(
    

  input sys_clk_i;


  output p_clk;
  output vsync;
  output href;
  output enable;  
  output [7:0] p_data;
  output rstc;
  output clk;
 
  output SIO_C;
  output SIO_D;
);

endmodule