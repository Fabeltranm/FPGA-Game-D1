module shift #(parameter N=8)(input sclk, input reset, input [N-1:0] dataSe, output reg [N-1:0] dataRe, input MISO, output reg MOSI);


// declaracion  de  variables

reg [N-1:0] r_regS;
reg [N-1:0] r_nextS;




//carga de dato
always @(dataSe)
	r_nextS=dataSe;


//register
always @(posedge sclk, posedge reset)
	begin
		if (reset)
			begin
			r_regS<=0;
			MOSI=1;
			end
		else
			r_regS<=r_nextS;

	end 

//desplazamiento izquierda
always  @(negedge reset, negedge sclk)
	begin
		if(reset)
			r_nextS<=0;
		else	
			r_nextS<={r_regS[N-2:0], 1'b1};	
	end

// salida

always @(negedge sclk)
	MOSI<=r_regS[N-1];


reg [N-1:0] r_regR;
reg [N-1:0] r_nextR;



//registro

always @(negedge sclk, negedge reset)
	begin
		if(reset)
			r_regR<=0;
		else
			r_regR<=r_nextR;

	end


//desplazamiento derecha

always @(posedge reset, posedge sclk)
	begin

		if(reset)
			r_nextR<=0;
		else
			r_nextR<={MISO,r_regR[N-1:1]};
	end


always @(posedge sclk)
	dataRe<=r_nextR;



endmodule 
