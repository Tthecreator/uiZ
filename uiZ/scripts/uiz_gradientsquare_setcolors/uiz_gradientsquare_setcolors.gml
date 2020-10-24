/// @description uiz_gradientsquare_setcolors(instanceid,top-left[c_white],top-right[c_black],bottom-left[c_aqua],bottom-right[c_purple])
/// @param instanceid
/// @param top-left[c_white]
/// @param top-right[c_black]
/// @param bottom-left[c_aqua]
/// @param bottom-right[c_purple]
function uiz_gradientsquare_setcolors(argument0, argument1, argument2, argument3, argument4) {
	gml_pragma("forceinline");
	argument0.color1=argument1;
	argument0.color2=argument2;
	argument0.color3=argument3;
	argument0.color4=argument4;



}
