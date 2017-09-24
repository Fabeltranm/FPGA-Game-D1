module Ultrasonido	(

				output [7:0]	d,
				output 		trigg,
				output 		DONE,
				input 		ENABLE,
				input 		ECHO,
				input			clk

			 );

divisorfrec divisorfrec0(	
					.clk		(	clk	),
					.CLKOUT	(	CLKOUT	)
								);


contador contador0	(
					.count	(	count	),
					.trigg	(	trigg	),
					.calculate	(	calculate	),
					.ECHO		(	ECHO	),
					.ENABLE	(	ENABLE	),
					.CLKOUT	(	CLKOUT	)
							);



multiplo multiplo0	(
					.count	(	count	),
					.calculate	(	calculate	),
					.DONE		(	DONE	),
					.d			(	d	)
							);


endmodule
