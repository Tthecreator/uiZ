/// @description uiz_textarea_setscrollbarsettings(instanceid,size[0.2],sizetype[dp],sprite[spr_uiZ_scrollbar],color[c_white],texturemode[uiz_texturemode_fill],speed[1],animation[uiz_smoothstep],animation time[.2])
/// @param instanceid
/// @param size[0.2]
/// @param sizetype[dp]
/// @param sprite[spr_uiZ_scrollbar]
/// @param color[c_white]
/// @param texturemode[uiz_texturemode_fill]
/// @param speed[1]
/// @param animation[uiz_smoothstep]
/// @param animation time[.2]
function uiz_textarea_setscrollbarsettings(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {
	gml_pragma("forceinline");
	argument0.scrollbarsize=argument1;
	argument0.scrollbarsizetype=argument2;
	argument0.scrollbarsprite=argument3;
	argument0.scrollbarcolor=argument4;
	argument0.scrollbartexturemode=argument5;
	argument0.scrollspeed=argument6;
	argument0.scrollbarAnimation=argument7;
	argument0.scrollbarAnimationTime=argument8;



}
