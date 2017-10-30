module receptor(input clkcapture,input Rx, input enable, output [9:0]dout,)
reg[1:0]state, nextstate;
parameter start0=2'b00;
parameter start1=2'b01;

reg control;
reg done=0;
reg[8:0]tmp=9'b000000000;
reg[3:0]contador=4'b0000;

always@(posedge clkcapture, posedge enable)
if(enable)state<=start0;
else state<=nextstate

always@(*)
begin

case(state)

start0:
if(Rx==1 && done=0)
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
control=0;
nextstate=start0;
end

start1:
begin
if(done=0)
begin
control=1;
nextstate=start1;
end
else
begin
control=0;
nextstate=start0;
end

default
nextstate=start0;

end case

end
//hasta aqui se describe como se pasa de un estado a otro
//ahora viene el bloque de decision que descibe de que manera capturamos la informacion


always@(posedge clkcapture)
begin
if(control==1 && done=0)
begin
tmp<={Rx,tmp[8:1]}
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
done=0
end
else
done=0
end


end module









