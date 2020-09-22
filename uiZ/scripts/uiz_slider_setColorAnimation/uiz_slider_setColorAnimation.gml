/// @description uiz_slider_setColorAnimation(instanceid,animation[uiz_quadratic_out],time[0.1])
/// @param instanceid
/// @param animation[uiz_quadratic_out]
/// @param time[0.1]
function uiz_slider_setColorAnimation(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.coloranimationtype=argument1;
	argument0.coloranicountspeed=argument2;



}
