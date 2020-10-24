/// @description uiz_drawscrollbar_update_full(scroll, x1, y1, x2, y2)
/// @param scroll
/// @param  x1
/// @param  y1
/// @param  x2
/// @param  y2
function uiz_drawscrollbar_update_full(argument0, argument1, argument2, argument3, argument4) {
	//updates a scrollbars view
	uiz_updater_FixViews_area_selfmarked(argument1, argument2, argument3, argument4)
	uiz_drawscrollbar_update_mark_full(argument0);



}
