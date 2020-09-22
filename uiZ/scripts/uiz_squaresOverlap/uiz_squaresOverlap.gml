/// @description uiz_squaresOverlap(1x1, 1y1, 1x2, 1y2, 2x1, 2y1, 2x2, 2y2)
/// @param 1x1
/// @param  1y1
/// @param  1x2
/// @param  1y2
/// @param  2x1
/// @param  2y1
/// @param  2x2
/// @param  2y2
function uiz_squaresOverlap(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	//first four arguments make the first square, left first, then top, then right, the bottom.
	//returns false for out of square, 
	//returns true for partly or fully in square
	//
	/*

	0-1x1: first square left.
	0-1y1: first square top.
	0-1x2: first square right.
	0-1y2: first square bottom.
	0-2x1: second square left.
	0-2y1: second square top.
	0-2x2: second square right.
	0-2y2: second square bottom.
	*/

	if argument0>argument6 or argument1>argument7 or argument2<argument4 or argument3<argument5
	then{return false;}else{
	return true;
	}



}
