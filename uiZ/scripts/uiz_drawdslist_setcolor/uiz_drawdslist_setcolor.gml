/// @description uiz_drawdslist_setcolor(instanceid,color[c_white],oncolor[c_white],clickcolor[c_white])
/// @param instanceid
/// @param color[c_white]
/// @param oncolor[c_white]
/// @param clickcolor[c_white]
function uiz_drawdslist_setcolor(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.color=argument1;
	argument0.oncolor=argument2;
	argument0.clickcolor=argument3;



}
