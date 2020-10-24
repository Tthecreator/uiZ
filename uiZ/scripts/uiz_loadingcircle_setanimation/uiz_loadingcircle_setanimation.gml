/// @description uiz_loadingcircle_setanimation(instanceid,time[0.5],animation1[uiz_acceldecel],animation2[uiz_quadratic_in])
/// @param instanceid
/// @param time[0.5]
/// @param animation1[uiz_acceldecel]
/// @param animation2[uiz_quadratic_in]
function uiz_loadingcircle_setanimation(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.countspeed=argument1;
	argument0.graph1=argument2;
	argument0.graph2=argument3;



}
