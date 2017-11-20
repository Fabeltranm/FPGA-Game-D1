module recepcion_TB;
    reg rx;
    wire rcv;
	reg clk_in;
    wire clk_div;
	reg reset;
	wire [7:0] dout;

    recepcion rec(.rx(rx),.clk_in(clk_in),.reset(reset),.dout(dout),.rcv(rcv),.clk_div(clk_div));
 
    reg [3:0] bitpos = 0;    
    reg [7:0] data = 8'b11111111;    

     always #1 clk_in = ~clk_in;


    initial begin
        clk_in=0;   
        reset=0; 
        rx=1;    
    end

    initial begin
    #1300 rx=0;    
    end

    always @(posedge clk_div)begin     
        if(bitpos<=7)begin    
            rx<=data[bitpos];
            bitpos<=bitpos+1;    
        end
        else begin
            rx=1;        
        end
    end


    initial begin: TEST_CASE

      $dumpfile("recepcion_TB.vcd");
      $dumpvars(0, recepcion_TB);


      $display("FIN de la simulacion");
      #100000 $finish;
    end

endmodule
