/// @description uiz_grid_addRow(grid)
/// @param grid
function uiz_grid_addRow(argument0) {
	/*
	Adds one extra row or colomn to a grid.
	Only takes one argument (the grid object id) and sets the size of the extra row/col to "1 xtra". 
	*/
	g=argument0

	for(var i=0;i<g.gridw;i++){
	var f=uiz_frame_create();
	g.gridobject[i,g.gridh]=f
	}
	uiz_gridSize_row(g,g.gridh,1,xtra)
	g.gridh++



}
