/// @description uiz_getPositionValue_range(left, right, divisions, square)
/// @param left
/// @param  right
/// @param  divisions
/// @param  square
function uiz_getPositionValue_range(argument0, argument1, argument2, argument3) {
	//if you imagine a 1D space between argument0 and argument1 that needs to be filled with a certain amount of squares(argument1,divisions)
	//then this function will return the left position for each square
	//it will however add margins to the left and right side
	//see manual for picture.
	return (argument3)*(argument1-argument0)/argument2+argument0



}
