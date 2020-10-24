/// @description uiz_stringbox_setcolor(instanceid,text[c_black],selected background[c_blue],selected text[c_white])
/// @param instanceid
/// @param text[c_black]
/// @param selected background[c_blue]
/// @param selected text[c_white]
function uiz_stringbox_setcolor(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.textcolor=argument1;
	argument0.selectbackcolor=argument2;
	argument0.selecttextcolor=argument3;




}
