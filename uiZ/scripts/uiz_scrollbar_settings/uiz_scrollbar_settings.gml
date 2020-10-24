/// @description uiz_scrollbar_settings(instanceid,sprite[spr_uiZ_scrollbar],color[c_white],backtexturemode[uiz_texturemode_fill],scrollspeed[1])
/// @param instanceid
/// @param sprite[spr_uiZ_scrollbar]
/// @param color[c_white]
/// @param backtexturemode[uiz_texturemode_fill]
/// @param scrollspeed[1]
function uiz_scrollbar_settings(argument0, argument1, argument2, argument3, argument4) {
	gml_pragma("forceinline");
	argument0.scrollbarsprite=argument1;
	argument0.scrollbarcolor=argument2;
	argument0.scrollbacktexturemode=argument3;
	argument0.scrollspeed=argument4;




}
