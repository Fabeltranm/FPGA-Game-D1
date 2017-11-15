module transmision (input rw, //rw=0 para transmitir
                    input clk_in,
                    input reset, //reset=0 para transmitir
                    input wire [7:0] din,   
                    output busy, 
                    output reg done,
                    output clk_uart, 
                    output reg tx);

wire clk_div;
Divisor_Frecuencia div(.clk_in(clk_in), .clk_div(clk_div), .reset(reset));

parameter count = 8;

assign clk_uart = clk_div;

initial begin
	tx <= 1'b1;
    done=0;
end

parameter STATE_IDLE	= 2'b00;
parameter STATE_START	= 2'b01;
parameter STATE_DATA	= 2'b10;
parameter STATE_STOP	= 2'b11;

reg [7:0] data = 8'b11111111;
reg [2:0] bitpos = 0;
reg [1:0] state = STATE_IDLE;

always @(posedge clk_div) begin 
    //done <= ~done; //done??
    if (reset)
        tx <= 1'b1; //busy=0?
    else begin
        case (state)
	        STATE_IDLE: begin
	    		state <= STATE_START;
	    		data <= din;
	    		bitpos <= 0;
                done<=0;
                tx <= 1'b1;
    	    end
    	    STATE_START: begin
    			tx <= 1'b0;
    			state <= STATE_DATA;
    	    end
    	    STATE_DATA: begin
    			if (bitpos == count-1)begin
    				tx<=data[bitpos]; 
    				state <= STATE_STOP;
    			end
    			else begin
    				tx<=data[bitpos];
    				bitpos <= bitpos + 1;
    			end
    	    end
        	STATE_STOP: begin
    			tx <= 1'b1;
                done<=1;
    			state <= STATE_IDLE;
    	    end
    	    default: begin
    		    tx <= 1'b1;
    	    	state <= STATE_IDLE;
    	    end
    	endcase
    end
end

assign busy = (state != STATE_IDLE);

endmodule
