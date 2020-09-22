/// @description uiz_drawscrollbar_update(scroll,x1,y1,x2,y2,orientation)
/// @param scroll
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param orientation
function uiz_drawscrollbar_update(argument0, argument1, argument2, argument3, argument4, argument5) {
	//updates a scrollbars view
	var mstate=uiz_drawscrollbar_getMstate(argument0);
	var mstate_last=uiz_drawscrollbar_getMstate_last(argument0);
	var updated = uiz_drawscrollbar_getUpdated(argument0);
	uiz_drawscrollbar_update_view(argument1,argument2,argument3,argument4,argument5,mstate,mstate_last,updated);
	uiz_drawscrollbar_update_mark(argument0);



}
