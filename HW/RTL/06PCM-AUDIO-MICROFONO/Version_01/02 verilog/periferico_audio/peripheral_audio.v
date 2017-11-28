module peripheral_audio(clk , rst , d_in , cs , addr , rd , wr, d_out, mclk, ledres, micLRSel,micData,ampPWM,ampSD );
  
  input clk;
  input rst;
  input [15:0]d_in;
  input cs;
  input [3:0]addr; // 4 LSB from j1_io_addr
  input rd;
  input wr;
  output [15:0]d_out;
  output ledres;
  output mclk;
  output micLRSel;
  input  micData;   
  output ampPWM;
  output ampSD;


//------------------------------------ regs and wires-------------------------------

reg [2:0] s; 	//selector mux_4  and demux_4

reg [7:0] d_out_pdm; // data 

wire pdm_done;
//------------------------------------ regs and wires-------------------------------

microfono tx(.reset(rst), .clk(clk), .dout(d_out_pdm), .micLRSel(micLRSel),.done(pdm_done), .mclk(mclk),.ampSD(ampSD),.ampPWM(ampPWM),.micData(micData),.ledres(ledres));

always @(*) begin//----address_decoder------------------
case (addr)
4'h0:begin s = (cs && rd) ? 3'b001 : 3'b000 ;end //dout_pdm
4'h2:begin s = (cs && rd) ? 3'b010 : 3'b000 ;end //done

default:begin s=3'b000 ; end
endcase
end//-----------------address_decoder--------------------





//always @(negedge clk) begin//-------------------- escritura de registros

//d_out_pdm= (s[0]) ? d_out[7:0] : d_out_pdm; // data in uart

//end//------------------------------------------- escritura de registros	




always @(negedge clk) begin//-----------------------mux_4 :  multiplexa salidas del periferico
case (s)
3'b010: d_out[0]= pdm_done;	
3'b010: d_out[7:0]= d_out_pdm;


default: d_out=0;
endcase
end//----------------------------------------------mux_4

									//(addr != 4'h4): se hace para evitar escrituras fantasm

endmodule
