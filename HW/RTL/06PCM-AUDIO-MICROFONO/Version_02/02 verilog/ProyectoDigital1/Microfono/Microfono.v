module Microfono(reset,clk,enable,d_in,rd,bclk,ws,done,full,empty,data_out);     //1
								//2								
	input wire reset;					//3
	input wire clk;						//4
	input wire enable;					//5					
	input wire d_in;					//6
	input wire rd;						//7
								//8
	output wire bclk;					//9
	output wire ws;						//10
	output wire done;					//11
	output wire [17:0] data_out;				//12
	output wire full;					//13
	output wire empty;					//14
								//15	
	wire count18;						//16
	wire count32;						//17
	wire reset_int;						//18
	wire en_bclk;						//19
	wire [5:0] count;					//20
	wire [17:0] data;					//21
	wire [17:0] d_out;					//
	wire [17:0]data_aux;					//22
								//23	
	FSM _FSM(						//24
		.reset(reset),					//25
		.clk(clk),					//26
		.enable(enable),				//27
		.count18(count18),				//28
		.count32(count32),				//29
		.reset_int(reset_int),				//30
		.done(done),					//31
		.en_bclk(en_bclk)				//32
	);							//33
								//34
	DivFreq _DivFrec(					//35
		.reset(reset_int),				//36
		.clk(clk),					//37
		.en_clk(en_bclk),				//38
		.bclk(bclk)					//39
	);							//40
								//41
	RegAcum _RegAcum(					//42
		.reset(reset_int),				//43
		.bclk(bclk),					//44
		.set(count32),					//45
		.count(count)					//46
	);							//47
								//48
	Comp _Comp(						//49
		.count(count),					//50
		.count18(count18),				//51
		.count32(count32)				//52
	);							//53
								//54
	RegWS _RegWS(						//55
		.reset(reset_int),				//56
		.set32(count32),				//57
		.ws(ws)						//58
	);							//59
								//60
	RegDes _RegDes(						//61
		.reset(reset_int),				//62
		.bclk(bclk),					//63
		.d_in(d_in),					//64
		.data(data)					//65
	);							//66
								//67
	RegSal _RegSal(						//68
		.reset(reset_int),				//69
		.load(count18),					//70
		.data(data),					//71
		.d_out(data_aux)				//72
	);							//73
								//74
	fifo _fifo(						//75
		.clk(clk),					//76
		.reset(reset_int),				//77
		.rd(rd),					//78
		.wr(count32),					//79
		.data_in(data_aux),				//80
		.data_out(d_out),				//81
		.empty(empty),					//82
		.full(full)					//83
	);							//84
endmodule							//85
