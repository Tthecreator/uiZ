/// @description uiz_tabslider_setmousesettings(instanceid,over color[c_ltgray],over alpha[0.2],click color[c_white],click alpha[0.2])
/// @param instanceid
/// @param over color[c_ltgray]
/// @param over alpha[0.2]
/// @param click color[c_white]
/// @param click alpha[0.2]
function uiz_tabslider_setmousesettings(argument0, argument1, argument2, argument3, argument4) {
	gml_pragma("forceinline");
	argument0.mouseoncolor=argument1;
	argument0.mouseonalpha=argument2;
	argument0.mouseincolor=argument3;
	argument0.mouseinalpha=argument4;



}
