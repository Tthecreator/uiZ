/// @description uiz_dropdown_setbuttoncolor(instanceid,color[c_white],mouseon color[c_gray],mousein color[c_black])
/// @param instanceid
/// @param color[c_white]
/// @param mouseon color[c_gray]
/// @param mousein color[c_black]
function uiz_dropdown_setbuttoncolor(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.buttoncolor=argument1;
	argument0.buttononcolor=argument2;
	argument0.buttonincolor=argument3;
	if argument0.kmouseover=0 then{argument0.ucolor=argument1}



}
