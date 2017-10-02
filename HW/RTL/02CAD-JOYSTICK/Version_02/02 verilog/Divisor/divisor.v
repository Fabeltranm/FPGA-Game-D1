module divisor  #(parameter div = 50000 )(input wire clk_in, output wire clk_out);
//parameter div = 50000000; //numero por el que se divide la fin para una fout de 2kHz    

localparam N = $clog2(div);

reg [N-1:0] divcounter = 0;


    

always @(posedge clk_in)
  if (divcounter == div - 1)
    divcounter <= 0;
   
  else 
    divcounter <= divcounter + 1;
   

assign clk_out = divcounter[N-1];
    
endmodule
