/// @description uiz_rotator_setanimation(instanceid,animation[uiz_straight],time[1])
/// @param instanceid
/// @param animation[uiz_straight]
/// @param time[1]
function uiz_rotator_setanimation(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.animation=argument1;
	argument0.rotationtime=argument2;




}
