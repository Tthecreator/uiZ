/// @description draw_debugpoint(x,y,color)
/// @param x
/// @param y
/// @param color
function draw_debugpoint(argument0, argument1, argument2) {
	/*
	Draws a small square of given color centered around given coordinated. 
	*/
	draw_square(argument0-10,argument1-10,argument0+10,argument1+10,argument2,1)



}
