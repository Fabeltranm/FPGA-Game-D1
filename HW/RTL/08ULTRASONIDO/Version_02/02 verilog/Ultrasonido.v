module Ultrasonido	(

				output [7:0]	d,
				output 		trigg,
				output 		DONE,
				input 		ENABLE,
				input 		ECHO,
				input		clk,
				input		reset

			 );

divisorfrec	divisorfrec0	(	
					.clk		(	clk	),
					.CLKOUT	(	CLKOUT	)
								);


contador	contador0	(
					.reset	(	reset	),
					.count	(	count	),
					.trigg	(	trigg	),
					.calculate	(	calculate	),
					.ECHO		(	ECHO	),
					.ENABLE	(	ENABLE	),
					.CLKOUT	(	CLKOUT	)
							);



Divisor		divisor0	(
					.reset	(	reset	),
					.count	(	count	),
					.calculate	(	calculate	),
					.DONE		(	DONE	),
					.d			(	d	)
							);


endmodule
