module	generadorPulsos
(
	input           clk,
	input		echo,
	input		enable
	output          trigg,
	output		done,
	output	[7:0]	count
);