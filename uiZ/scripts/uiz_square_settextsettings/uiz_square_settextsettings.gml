/// @description uiz_square_settextsettings(instanceid,font[-1],color[c_black],alpha[1])
/// @param instanceid
/// @param font[-1]
/// @param color[c_black]
/// @param alpha[1]
function uiz_square_settextsettings(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.font=argument1;
	argument0.textcolor=argument2;
	argument0.textalpha=argument3;
	uiz_updater_FixViews_with(argument0);



}
