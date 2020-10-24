/// @description uiz_huesquare_setanimation(instanceid,enabled[true],hanimation[uiz_quadratic_out],sanimation[uiz_quadratic_out],rgbanimation[uiz_quadratic_out],time[0.1])
/// @param instanceid
/// @param enabled[true]
/// @param hanimation[uiz_quadratic_out]
/// @param sanimation[uiz_quadratic_out]
/// @param rgbanimation[uiz_quadratic_out]
/// @param time[0.1]
function uiz_huesquare_setanimation(argument0, argument1, argument2, argument3, argument4, argument5) {
	gml_pragma("forceinline");
	argument0.animation=argument1;
	argument0.hanimationtype=argument2;
	argument0.sanimationtype=argument3;
	argument0.rgbanimationtype=argument4;
	argument0.anicountspeed=argument5;



}
