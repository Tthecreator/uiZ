/// @description uiz_squarebutton_setcolor(instanceid,normal[c_white],mouse over[c_ltgray],mouse click[c_gray])
/// @param instanceid
/// @param normal[c_white]
/// @param mouse over[c_ltgray]
/// @param mouse click[c_gray]
function uiz_squarebutton_setcolor(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.color=argument1;
	argument0.oncolor=argument2;
	argument0.incolor=argument3;




}
