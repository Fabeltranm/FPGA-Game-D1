module  meultrasonido  (
                            input	CLKOUT2,
                            input	orden,
                            output	ENABLE,
                            output	reset,
                          );
	reg funcione;
	initial
	begin
		funcione=0;
	end
	always@(posedge CLKOUT2 || orden)
	begin
	case(orden)
		1'b0:	
		begin
			ENABLE <=  0;
	      		reset  <=  1;
		end
		1'b1:
		begin
			reset  <=  0;
	     		ENABLE <=  1;
		end
		default:
		begin
			reset  <=  0;
	     		ENABLE <=  0;
		end
	endcase
	end
endmodule
