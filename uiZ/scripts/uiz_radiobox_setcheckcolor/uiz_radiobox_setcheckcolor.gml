/// @description uiz_radiobox_setcheckcolor(instanceid,normal[c_black],mouse over[c_dkgray],mouse click[c_black])
/// @param instanceid
/// @param normal[c_black]
/// @param mouse over[c_dkgray]
/// @param mouse click[c_black]
function uiz_radiobox_setcheckcolor(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.checkcolor=argument1;
	argument0.checkoncolor=argument2;
	argument0.checkincolor=argument3;



}
