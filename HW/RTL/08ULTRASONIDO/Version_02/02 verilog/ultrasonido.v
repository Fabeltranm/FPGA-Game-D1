module	ultrasonido	(
				output [7:0]	d,
				output 		trigg,
				output 		DONE,
				input 		ENABLE,
				input 		ECHO,
				input		clk,
				input		reset

			 );

divisorfrec	divisorfrec0	(	
					.clk		(	clk		),
					.ENABLE		(	ENABLE		),
					.CLKOUT		(	CLKOUT		)
				);

divisorfrecgen	divisorfrecgen0	(	
					.clk		(	clk		),
					.ENABLE		(	ENABLE		),
					.CLKOUT1	(	CLKOUT1		)
				);

genpulsos	genpulsos0	(
					.pulse		(	pulse		),
					//.ECHO		(	ECHO		),
					.CLKOUT1	(	CLKOUT1		),
					.reset		(	reset		),
					.trigg		(	trigg		),
					//.sign		(	sign		)
				);


contador	contador0	(
					.reset		(	reset		),
					.count		(	count		),
					.pulse		(	pulse		),
					.calculate	(	calculate	),
					//.sign		(	sign		),
					.ECHO		(	ECHO		),
					.ENABLE		(	ENABLE		),
					.CLKOUT		(	CLKOUT		)
				);



divisor		divisor0	(
					.reset		(	reset		),
					.count		(	count		),
					.calculate	(	calculate	),
					.DONE		(	DONE		),
					.d		(	d		)
				);


endmodule
