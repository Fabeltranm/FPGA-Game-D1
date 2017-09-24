module Touch	(

				output 		DONE,
				output	[7:0]	data,
				input		clk,
				input 		Rx

			 );

TouchScreen TouchScreen0	(
						.DONE	(	DONE	),
						.data	(	data	),
						.CLKOUT	(	CLKOUT	),
				 		.Rx	(	Rx	)
				);

divisorfrec divisorfrec0	(
						.clk	(	clk	),
					        .CLKOUT	(	CLKOUT	)	
				);

endmodule
