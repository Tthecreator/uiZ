/// @description uiz_gridObject(grid,x,y)
/// @param grid
/// @param x
/// @param y
function uiz_gridObject(argument0, argument1, argument2) {
	//Returns the instance id of the cell at the specified row and col inside the grid. 
	var g=argument0;
	if argument1>g.gridw or argument2>g.gridh then{
	show_error("Tried to get an object from a grid, outside the grid.",0)
	}else{
	return g.gridobject[argument1,argument2]
	}



}
