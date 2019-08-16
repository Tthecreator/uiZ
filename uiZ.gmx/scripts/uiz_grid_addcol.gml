///uiz_grid_addcol(grid)
/*
Adds one extra row or colomn to a grid.
Only takes one argument (the grid object id) and sets the size of the extra row/col to "1 xtra".*/
g=argument0

for(var i=0;i<g.gridh;i++){
var f=uiz_frame_create();
g.gridobject[g.gridw,i]=f
}
uiz_gridsize_col(g,g.gridw,1,xtra)
g.gridw++
