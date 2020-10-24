/// @description uiz_animation_setlastpoint(animationid,value,optional curvetype)
/// @param animationid
/// @param value
/// @param optional curvetype
function uiz_animation_setlastpoint_legacy(argument0, argument1) {
	var a=uiz_animationto;
	with(a){
	var aid=argument0
	uiz_animation_setpoint_legacy(aid,uiz_asize[aid]+1,argument1)

	}



}
