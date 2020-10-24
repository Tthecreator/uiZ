/// @description uiz_window_setanimation(instanceid, maximizeanimation[uiz_elastic_inout], maximizeanimationspeed[0.3], unmaximizeanimation[uiz_elastic_inout], unmaximizeanimationspeed[0.2], minimizeanimation[uiz_wigle], minimizeanimationspeed[0.3], unminimizeanimation[uiz_wigle], unminimizeanimationspeed[0.3])
/// @param instanceid
/// @param  maximizeanimation[uiz_elastic_inout]
/// @param  maximizeanimationspeed[0.3]
/// @param  unmaximizeanimation[uiz_elastic_inout]
/// @param  unmaximizeanimationspeed[0.2]
/// @param  minimizeanimation[uiz_wigle]
/// @param  minimizeanimationspeed[0.3]
/// @param  unminimizeanimation[uiz_wigle]
/// @param  unminimizeanimationspeed[0.3]
function uiz_window_setanimations(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	gml_pragma("forceinline");
	argument0.maximizeanimation=argument1;
	argument0.maximizeanimationspeed=argument2;
	argument0.unmaximizeanimation=argument3;
	argument0.unmaximizeanimationspeed=argument4;
	argument0.minimizeanimation=argument5;
	argument0.minimizeanimationspeed=argument6;
	argument0.unminimizeanimation=argument7;
	argument0.unminimizeanimationspeed=argument8;



}
