/// @description uiz_animation_addlastpoint(animationid,value,optional curvetype)
/// @param animationid
/// @param value
/// @param optional curvetype
function uiz_animation_addlastpoint_legacy(argument0, argument1) {
	var a=uiz_animationto;
	with(a){
	var aid=argument0
	uiz_animation_addpoint_legacy(aid,uiz_asize[aid]+1,argument1)
	}



}
