/// @description uiz_valuebox_setbuttonspeed(instanceid,increase amount[1], rapid speed[180], rapid time[0.5])
/// @param instanceid
/// @param increase amount[1]
/// @param  rapid speed[180]
/// @param  rapid time[0.5]
function uiz_valuebox_setbuttonspeed(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.valuespeed=argument1;
	argument0.valuefastspeed=argument2;
	argument0.butsteps=argument3;



}
