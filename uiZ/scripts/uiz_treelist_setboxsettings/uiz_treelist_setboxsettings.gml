/// @description uiz_treelist_setboxsettings(instanceid,sprite[spr_uiZ_plusminbox],normal color[c_black],mouse over color[c_gray],mouse click color[c_ltgray])
/// @param instanceid
/// @param sprite[spr_uiZ_plusminbox]
/// @param normal color[c_black]
/// @param mouse over color[c_gray]
/// @param mouse click color[c_ltgray]
function uiz_treelist_setboxsettings(argument0, argument1, argument2, argument3, argument4) {
	gml_pragma("forceinline");
	argument0.boxsprite=argument1;
	argument0.boxcolor=argument2;
	argument0.boxoncolor=argument3;
	argument0.boxincolor=argument4;



}
