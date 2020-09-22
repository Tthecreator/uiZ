/// @description uiz_drawscrollbar_update_mark(scroll)
/// @param scroll
function uiz_drawscrollbar_update_mark(argument0) {
	//marks a scrollbar for update without actually updating its view
	//this is usefull if you know you have to update an area of an object that includes the scrollbar.
	if uiz_drawscrollbar_getUpdated(argument0) == 0 then{
	argument0[@uiz_drawscrollbar_struct.uiz_dsb_updated] = 3;
	//return argument0+0.003*uiz_sign(argument0);
	}



}
