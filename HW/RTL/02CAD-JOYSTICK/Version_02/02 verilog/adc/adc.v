module recepcion(input CS,
                 input clk_in,
		 input Din
                 input reset,
                 output reg [7:0] dout,
                 output clk_div);

Divisor_Frecuencia div(.clk_in(clk_in), .clk_div(clk_div), .reset(reset));

initial begin
	dout = 8'b00000000; 
end
parameter CS_STATE_DATA		= 2'b01;
parameter CS_STATE_STOP		= 2'b10;

reg [1:0] state = CS_STATE_DATA;
reg [3:0] bitpos = 0;
reg [7:0] scratch = 8'b00000000;

always @(negedge clk_div) begin 
        case (state)
        CS_STATE_DATA: begin 			
                if(bitpos<=7) begin
    				scratch[bitpos] <= Din;
    				bitpos<=bitpos+1;
    			end
    			if (bitpos == 8)begin
    				state <= CS_STATE_STOP;
                end
        end
		CS_STATE_STOP: begin
			if (CS==1) begin
				state <= RX_STATE_START;
				dout <= scratch;
				avail <= 1;
			end
		end
		default: begin
			state <= RX_STATE_START;
		end
		endcase
	end

endmodule
