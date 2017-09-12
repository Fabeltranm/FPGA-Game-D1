module touchscreen #(
	parameter serialized_coordinate_x = 1,
	parameter serialized_coordinate_y = 1,
         
)(input RX, output Package XY,output DONE);
