module adc(input Din,
		 input clk_in,
		 input reset,
                 output reg [7:0] D0,
                 output clk_div,
		 output reg done);

Divisor_Frecuencia div(.clk_in(clk_in), .clk_div(clk_div), .reset(reset));

initial begin
	D0 = 8'b00000000; 
end
parameter CS_STATE_START	= 2'b00;
parameter CS_STATE_DATA		= 2'b01;
parameter CS_STATE_STOP		= 2'b10;

reg [1:0] state = CS_STATE_START;
reg [3:0] bitpos = 0;
reg [7:0] scratch = 8'b00000000;

always @(negedge clk_div) begin 
        case (state)
	CS_STATE_START: begin
		if (Din==0) begin
			done<=0;
			bitpos <= 0;
			scratch <= 0;
		        state <= CS_STATE_DATA;
		end
	end
	CS_STATE_DATA: begin 
	                if (bitpos <= 7) begin
    				scratch[bitpos] <= Din;
    				bitpos<=bitpos+1;
    			end
			else if (bitpos == 8)begin
				bitpos <= 0;
    				state <= CS_STATE_STOP;
			end
	end
      	CS_STATE_STOP: begin
		D0 <= scratch;
		done<=1;
		state <= CS_STATE_START;
	end
	endcase
end

endmodule
