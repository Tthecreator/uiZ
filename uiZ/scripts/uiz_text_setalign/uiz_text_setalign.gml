/// @description uiz_text_setalign(instanceid,halign[fa_left],valign[fa_top])
/// @param instanceid
/// @param halign[fa_left]
/// @param valign[fa_top]
function uiz_text_setalign(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.halign=argument1;
	argument0.valign=argument2;



}
