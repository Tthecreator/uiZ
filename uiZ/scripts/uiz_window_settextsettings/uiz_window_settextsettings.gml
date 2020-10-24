/// @description uiz_window_settextsettings(instanceid, halign[fa_left], valign[fa_middle], wholewidthalign[false], windowtextcolor[c_black], font[-1])
/// @param instanceid
/// @param  halign[fa_left]
/// @param  valign[fa_middle]
/// @param  wholewidthalign[false]
/// @param  windowtextcolor[c_black]
/// @param  font[-1]
function uiz_window_settextsettings(argument0, argument1, argument2, argument3, argument4, argument5) {
	gml_pragma("forceinline");
	argument0.halign=argument1;
	argument0.valign=argument2;
	argument0.wholewidthalign=argument3;
	argument0.windowtextcolor=argument4;
	argument0.font=argument5;




}
