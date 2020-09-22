/// @description uiz_dropdown_settextsettings(instanceid,color[c_black],font[-1],containtext[true])
/// @param instanceid
/// @param color[c_black]
/// @param font[-1]
/// @param containtext[true]
function uiz_dropdown_settextsettings(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.textcolor=argument1;
	argument0.font=argument2;
	argument0.containtext=argument3;



}
