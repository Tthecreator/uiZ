///uiz_gridobject_set(grid,x,y,instanceid)
//Returns the frame id of the cell at the specified row and col inside the grid. 
var g=argument0;
if argument1>g.gridw or argument2>g.gridh then{
show_error("Tried to add an object onto a grid, outside the grid.",0)
}else{
g.gridobject[argument1,argument2]=argument3;
}
