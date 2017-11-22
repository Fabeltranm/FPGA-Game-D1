module	genpulsosprueba	(
				input		pulse,
				input		clk,
				input		reset,
				output		trigg
			);
	genpulsos	genpulsos0		(
							.pulse		(	pulse	),
							.CLKOUT1	(	CLKOUT1	),
							.reset		(	reset	),
							.trigg		(	trigg	)
						);

	divisorfrecgen	divisorfrecgen0		(
							.clk			(	clk	),
							.CLKOUT1		(	CLKOUT1	)
						);
endmodule
