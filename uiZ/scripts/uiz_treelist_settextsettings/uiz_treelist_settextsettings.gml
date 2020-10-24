/// @description uiz_treelist_settextsettings(instanceid,normal color[c_black],mouse over color[c_blue],mouse click color[c_white],font[-1])
/// @param instanceid
/// @param normal color[c_black]
/// @param mouse over color[c_blue]
/// @param mouse click color[c_white]
/// @param font[-1]
function uiz_treelist_settextsettings(argument0, argument1, argument2, argument3, argument4) {
	gml_pragma("forceinline");
	argument0.textcolor=argument1;
	argument0.textoncolor=argument2;
	argument0.textincolor=argument3;
	argument0.font=argument4;



}
