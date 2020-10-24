/// @description uiz_frameset_setCellMargins(anchor, marginWidth, marginHeight)
/// @param anchor
/// @param  marginWidth
/// @param  marginHeight
function uiz_frameset_setCellMargins(argument0, argument1, argument2) {
	argument0.margincellw=argument1;
	argument0.margincellh=argument2;
	uiz_frameset_forceFixSize(argument0);



}
