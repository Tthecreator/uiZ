/// @description uiz_drawscrollbar_update_mark_full(scroll)
/// @param scroll
function uiz_drawscrollbar_update_mark_full(argument0) {
	//marks a scrollbar for update without actually updating its view
	//this is usefull if you know you have to update an area of an object that includes the scrollbar.
	//this function will make sure the entire area of the scrollbar will get updated, instead of only the buttons that have changed.
	argument0[@uiz_drawscrollbar_struct.uiz_dsb_updated] = 4;
	//return floor(argument0*100)/100+0.004;



}
