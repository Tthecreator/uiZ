/// @description uiz_drawscrollbar_getSelected(scroll)
/// @param scroll
function uiz_drawscrollbar_getSelected(argument0) {
	/*
	returns whether the mouse has grabbed the scollbar
	The "scroll" value is the value used and returned by the normal uiz_drawscrollbar_ functions.
	*/

	return argument0[@uiz_drawscrollbar_struct.uiz_dsb_scrollsel];

	//if argument0>=0 then{return true;}else{return false;}




}
