module Microfono(reset,clk,enable,d_in,bclk,ws,d_out,done);

	input wire reset;
	input wire clk;
	input wire enable;
	input wire d_in;
	output wire bclk;
	output wire ws;
	output wire [17:0] d_out;
	output wire done;

	wire count18;
	wire count32;
	wire reset_int;
	wire en_bclk;
	wire [5:0] count;
	wire [17:0] data;

	FSM _FSM(
		.reset(reset),
		.clk(clk),
		.enable(enable),
		.count18(count18),
		.count32(count32),
		.reset_int(reset_int),
		.done(done),
		.en_bclk(en_bclk)
	);

	DivFreq _DivFrec(
		.reset(reset_int),
		.clk(clk),
		.en_clk(en_bclk),
		.bclk(bclk)
	);

	RegAcum _RegAcum(
		.reset(reset_int),
		.bclk(bclk),
		.set(count32),
		.count(count)
	);

	Comp _Comp(
		.count(count),
		.count18(count18),
		.count32(count32)
	);

	RegWS _RegWS(
		.reset(reset_int),
		.set32(count32),
		.ws(ws)
	);

	RegDes _RegDes(
		.reset(reset_int),
		.bclk(bclk),
		.D_IN(D_IN),
		.data(data)
	);

	RegSal _RegSal(
		.reset(reset_int),
		.load(count18),
		.data(data),
		.d_out(d_out)
	);

endmodule
