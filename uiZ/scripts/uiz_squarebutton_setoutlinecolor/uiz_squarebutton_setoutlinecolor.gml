/// @description uiz_squarebutton_setoutlinecolor(instanceid,enabled[true],normal[c_white],mouse over[c_ltgray],mouse click[c_gray],alpha[1])
/// @param instanceid
/// @param enabled[true]
/// @param normal[c_white]
/// @param mouse over[c_ltgray]
/// @param mouse click[c_gray]
/// @param alpha[1]
function uiz_squarebutton_setoutlinecolor(argument0, argument1, argument2, argument3, argument4, argument5) {
	gml_pragma("forceinline");
	argument0.outline=argument1;
	argument0.outlinecolor=argument2;
	argument0.outlineoncolor=argument3;
	argument0.outlineincolor=argument4;
	argument0.outlinealpha=argument5;




}
