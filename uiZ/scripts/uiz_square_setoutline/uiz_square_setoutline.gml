/// @description uiz_square_setoutline(instanceid,enabled[false],color[c_black],alpha[1])
/// @param instanceid
/// @param enabled[false]
/// @param color[c_black]
/// @param alpha[1]
function uiz_square_setoutline(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.ouline=argument1;
	argument0.outlinecolor=argument2;
	argument0.outlinealpha=argument3;
	uiz_updater_FixViews_with(argument0);



}
