/// @description uiz_animation_setfirstpoint(animationid,value,optional curvetype)
/// @param animationid
/// @param value
/// @param optional curvetype
function uiz_animation_setfirstpoint_legacy() {
	if argument_count>2 then{
	uiz_animation_setpoint_legacy(argument[0],0,argument[1],argument[2])}else{
	uiz_animation_setpoint_legacy(argument[0],0,argument[1])
	}



}
