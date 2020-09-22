/// @description uiz_text_settext(instanceid,text[""])
/// @param instanceid
/// @param text[""]
function uiz_text_settext(argument0, argument1) {
	//don't forget to call uiz_text_recalculate after changing this parameter. (see uiz_text_recalculate for more info)
	//if your text has multiple lines in it then you need enable multi line support using uiz_text_setmultiline().
	gml_pragma("forceinline");
	argument0.text=string(argument1);



}
