module adc_TB;
reg Din;
reg clk_in=0;
wire clk_div;
reg CS=0;
reg reset=0;
wire [7:0] Dout;

	adc rec(.Din(Din), .reset(reset), .clk_in(clk_in), .clk_div(clk_div), .Dout(Dout));
 
    reg [7:0] dato = 8'b10101010;
    reg [3:0] counter = 0;    
    reg [3:0] bitpos = 0; 
     always #1 clk_in = ~clk_in;

    initial begin        
        clk_in=0;   
	CS=1;
	#1000
	CS=0;
    end
     always @(negedge clk_div)begin
    counter <= counter+1;     
            if(bitpos<=7)begin    
                Din<=dato[bitpos];
                bitpos<=bitpos+1;    
            end
                if (counter==7)begin
                    counter<=0;
                    bitpos<=0;       
                end            
            end
        end        
        else if (counter<3)
            Din=1;
        else if (counter==3)
            Din=0;
    end
endmodule
