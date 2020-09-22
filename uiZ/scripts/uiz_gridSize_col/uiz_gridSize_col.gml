/// @description uiz_gridSize_col(grid,colomn,size,sizetype(px,dp,xtra,fc))
/// @param grid
/// @param colomn
/// @param size
/// @param sizetype(px
/// @param dp
/// @param xtra
/// @param fc
function uiz_gridSize_col(argument0, argument1, argument2, argument3) {
	/*
	Allows you to set the size of a certain row or colom within a grid structure.
	For this, you need to know the id of the already existing grid, which row/col you want to edit and the new size.
	If you resize a certain row/col then all frames in that row/col will get that width/height. 
	*/
	argument0.colsizetype[argument1]=argument3
	argument0.colsize[argument1]=argument2




}
