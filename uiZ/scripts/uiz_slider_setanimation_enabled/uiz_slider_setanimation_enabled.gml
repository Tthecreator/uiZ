/// @description uiz_slider_setanimation_enabled(instanceid,knobAnimation[true],colorAnimation[true])
/// @param instanceid
/// @param knobAnimation[true]
/// @param colorAnimation[true]
function uiz_slider_setanimation_enabled(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.animation=argument1;
	argument0.coloranimation=argument2;



}
