/// @description uiz_framescrollbar_settings(instanceid,scrollbarsprite[spr_uiZ_scrollbar],scrollbarcolor[c_white],scrollbacktexturemode[uiz_texturemode_fill],scrollspeed[10])
/// @param instanceid
/// @param scrollbarsprite[spr_uiZ_scrollbar]
/// @param scrollbarcolor[c_white]
/// @param scrollbacktexturemode[uiz_texturemode_fill]
/// @param scrollspeed[10]
function uiz_framescrollbar_settings(argument0, argument1, argument2, argument3, argument4) {
	gml_pragma("forceinline");
	argument0.scrollbarsprite=argument1;
	argument0.scrollbarcolor=argument2;
	argument0.scrollbacktexturemode=argument3;
	argument0.scrollspeed=argument4;



}
