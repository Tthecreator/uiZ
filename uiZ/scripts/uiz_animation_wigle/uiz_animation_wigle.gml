/// @description uiz_animation_wigle(fl x,int high,int low)
/// @param fl x
/// @param int high
/// @param int low
function uiz_animation_wigle(argument0, argument1, argument2) {
	var t2 = argument0*argument0;
	var t3 = t2*argument0;
	return (t3-2*t2+argument0)*argument1+(-2*t3+3*t2)+(t3-t2)*argument2;



}
