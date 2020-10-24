/// @description uiz_frameset_setMargins(instanceid, left, right, top, bottom)
/// @param instanceid
/// @param  left
/// @param  right
/// @param  top
/// @param  bottom
function uiz_frameset_setMargins(argument0, argument1, argument2, argument3, argument4) {
	argument0.marginl=argument1;
	argument0.marginr=argument2;
	argument0.margint=argument3;
	argument0.marginb=argument4;
	uiz_frameset_forceFixSize(argument0);



}
