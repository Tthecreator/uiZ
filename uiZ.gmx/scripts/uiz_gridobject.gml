///uiz_gridObject(grid,x,y)
//Returns the instance id of the cell at the specified row and col inside the grid. 
var g=argument0;
if argument1>g.gridw or argument2>g.gridh then{
show_error("Tried to get an object from a grid, outside the grid.",0)
}else{
return g.gridobject[argument1,argument2]
}
