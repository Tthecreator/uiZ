/// @description uiz_radiobox_setoutlinecolor(instanceid,normal[c_black],mouse over[c_black],mouse click[c_black])
/// @param instanceid
/// @param normal[c_black]
/// @param mouse over[c_black]
/// @param mouse click[c_black]
function uiz_radiobox_setoutlinecolor(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.outlinecolor=argument1;
	argument0.outlineoncolor=argument2;
	argument0.outlineincolor=argument3;



}
