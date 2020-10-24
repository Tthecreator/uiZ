/// @description uiz_setGridObjects_canvas(grid)
/// @param grid
function uiz_setGridObjects_canvas(argument0) {
	/*
	Fills a grid up with frames so every time you call uiz_gridObject() it will return the instance id of a obj_uiZ_frame.
	ONLY CALL THIS SCRIPT ONCE AFTER CREATING THE GRID.
	It might be slightly more performance intensive if you use frames (uiz_setgridframes()) for everything if you just like to have a row of buttons or something.
	In that case uiz_setgridobject uiz_setgrid_custom might be a better solution. 
	*/
	uiz_setGridObjects_object(argument0,obj_uiZ_canvas);




}
