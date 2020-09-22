/// @description uiz_text_setfont(instanceid,font[-1])
/// @param instanceid
/// @param font[-1]
function uiz_text_setfont(argument0, argument1) {
	//don't forget to call uiz_text_recalculate after changing this parameter. (see uiz_text_recalculate for more info)
	gml_pragma("forceinline");
	argument0.font=argument1;



}
