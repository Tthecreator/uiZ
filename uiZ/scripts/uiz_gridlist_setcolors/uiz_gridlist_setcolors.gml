/// @description uiz_gridlist_setcolors(instanceid,cell normal[c_white],cell over[c_ltgray],cell click[c_gray])
/// @param instanceid
/// @param cell normal[c_white]
/// @param cell over[c_ltgray]
/// @param cell click[c_gray]
function uiz_gridlist_setcolors(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.normalcolor=argument1;
	argument0.selectiononcolor=argument2;
	argument0.selectionincolor=argument3;






}
