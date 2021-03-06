/// @description uiz_getPositionValue_marginRange(space, divisions, square, marginleft, marginright)
/// @param space
/// @param  divisions
/// @param  square
/// @param  marginleft
/// @param  marginright
function uiz_getPositionValue_marginRange(argument0, argument1, argument2, argument3, argument4) {
	//if you imagine a 1D space that needs to be filled with a certain amount of squares(argument1,divisions)
	//then this function will return the left position for each square
	//it will however add margins to the left and right side (a margin of 0.2 would mean 0.2 margin on the left and 0.2 on the right)
	//see manual for picture.
	return (argument2)*(argument0-argument3-argument4)/argument1+argument3



}
