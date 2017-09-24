module Ultrasonido	(

				output [7:0]	d,
				output 		trigg,
				output 		DONE,
				input 		ENABLE,
				input 		ECHO,
				input		clk

			 );

divisorFrec divisorFrec0	(
					.CLKIN	(		),
				        .CLKOUT	(		)
				);


contador contador0	(
					.count	(	count	),
					.trigg	(	trigg	),
					.doneC	(	enableM	),
					.ECHO	(	ECHO	),
					.ENABLE	(	ENABLE	)

			);



multiplo multiplo0	(
					.count	(	count	),
					.enableM	(	doneC	),
					.DONE	(	DONE	),
					.d	(	d	)
			);


endmodule
