/// @description uiz_gridObject_set(grid, x, y, instanceid)
/// @param grid
/// @param  x
/// @param  y
/// @param  instanceid
function uiz_gridObject_set(argument0, argument1, argument2, argument3) {
	//sets the frame id of the cell at the specified row and col inside the grid. 
	var g=argument0;
	if argument1>g.gridw or argument2>g.gridh then{
	show_error("Tried to add an object onto a grid, outside the grid.",0)
	}else{
	g.gridobject[argument1,argument2]=argument3;
	}



}
