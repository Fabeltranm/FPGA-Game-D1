
module receptor( input clk, input reset, input Rx, output reg[7:0]dout );



reg[1:0]state, nextstate;
parameter start0=2'b00;
parameter start1=2'b01;

reg control;
reg done=0;
reg[8:0]tmp=9'b000000000;
reg[3:0]contador=4'b0000;
reg[9:0]c=10'b1111111111;
reg retardo=0;
reg[1:0]c2=2'b11;
reg capture=0;


//retardo,tiempo de captura
always@(posedge clk)
begin
if(c<868)
c=c+1;
else 

c=0;
retardo=~retardo;


end

always@(posedge retardo)
begin
if(c2>1)
c2=0;
else
c2=c2+1;
end

always@(c2)
begin
if (c2==1)
capture=1;
else
capture=0;
end


//maquina de estados
always@(posedge capture, posedge reset)
if(reset)state <= start0;
else state <= nextstate;

always@(*)
begin

case(state)

start0:
if(Rx==1 && done==0)
begin
control=0;
nextstate=start0;
end
else if (Rx==0 && done==0)
begin
control=1;
nextstate=start1;
end 
else
begin
control=0;
nextstate=start0;
end

start1:
begin
if(done==0)
begin
control=1;
nextstate=start1;
end
else
begin
control=0;
nextstate=start0;
end
end

default
nextstate=start0;

endcase

end
//hasta aqui se describe como se pasa de un estado a otro
//ahora viene el bloque de decision que descibe de que manera capturamos la informacion


always@(posedge capture)
begin
if(control==1 && done==0)
begin
tmp<={Rx,tmp[8:1]};
end
end

always@(posedge capture)
begin
if(control)
if(contador>=9)
begin
contador=0;
done=1;
dout<=tmp[8:1];
end
else 
begin
contador=contador+1;
done=0;
end
else
done=0;
end

endmodule




