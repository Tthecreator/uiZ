///uiz_grid_create(gridw,gridh)
/*
Creates a grid.
Grids are one of the few objects that need a special create function, a grid needs to start witch a specified width and height.
0-gridw: how many coloms the grid should have.
1-gridh: how many rows the grid should have. 
*/
var g=instance_create(0,0,obj_uiZ_grid);
if argument0<=0 or argument1<=0 then{
sdbm("[uiZ|ERROR] A grid cannot have size 0, check your uiz_grid_create().")
}
g.gridw=argument0
g.gridh=argument1
for(var e=argument0-1;e>=0;e--){
for(var i=argument1-1;i>=0;i--){
var f = uiz_c(obj_uiZ_frame);
g.gridobject[e,i]=f;
uiz_setParent(f,g);
}
}
//sdbm(argument0,argument1,array_length_2d(g.gridobject,0),array_height_2d(g.gridobject));
for(var i=argument1-1;i>=0;i--){
    g.rowsizetype[i]=xtra;
    g.rowsize[i]=1;
}
for(var i=argument0-1;i>=0;i--){
    g.colsizetype[i]=xtra;
    g.colsize[i]=1;
}
return g;
