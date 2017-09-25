module ram #(
	parameter mem_file_name = "none",
	parameter Xsize=1280,
	parameter Ysize=800

) (
  	input clkq,
  	output reg [10:0]d_out,
  	input [10:0]addrX,
  	input [31:0]addrY, 
	input rd
	
);

//reg    [23:0] ram [0:Xsize*Ysize]; 


//always @(posedge clk) d_out <= ram[ addrX ];
initial d_out =0;
always @(clkq) d_out = addrX ;

/*
initial 
begin
	if (mem_file_name != "none")
	begin
		$readmemh(mem_file_name, ram);
	end
end
*/
endmodule
