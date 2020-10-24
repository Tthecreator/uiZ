/// @description scroll=uiz_drawscrollbar_getValue(scroll)
/// @param scroll
function uiz_drawscrollbar_getValue(argument0) {
	/*
	returns how far a scrollbar has scrolled inside a scrollbar's "scroll" value.
	The "scroll" value is the value used and returned by the normal uiz_drawscrollbar_ functions.
	*/
	return round(argument0[@uiz_drawscrollbar_struct.uiz_dsb_scroll]);
	//return floor(uiz_positify(argument0));




}
