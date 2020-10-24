/// @description uiz_spriteanimationbutton_setanimation(instanceid,animationin[uiz_acceldecel],animationintime[1],animationout[uiz_acceldecel],animationouttime[1])
/// @param instanceid
/// @param animationin[uiz_acceldecel]
/// @param animationintime[1]
/// @param animationout[uiz_acceldecel]
/// @param animationouttime[1]
function uiz_spriteanimationbutton_setanimation(argument0, argument1, argument2, argument3, argument4) {
	gml_pragma("forceinline");
	argument0.animationin=argument1;
	argument0.animationintime=argument2;
	argument0.animationout=argument3;
	argument0.animationouttime=argument4;



}
