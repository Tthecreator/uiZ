/// @description uiz_frame_setscrollbarsettings(instanceid,scrollbarsize[0.2],scrollbarsizetype[dp],scrollbarsprite[spr_uiZ_scrollbar],scrollbarcolor[c_white],scrollbacktexturemode[uiz_texturemode_fill)
/// @param instanceid
/// @param scrollbarsize[0.2]
/// @param scrollbarsizetype[dp]
/// @param scrollbarsprite[spr_uiZ_scrollbar]
/// @param scrollbarcolor[c_white]
/// @param scrollbacktexturemode[uiz_texturemode_fill
function uiz_frame_setscrollbarsettings(argument0, argument1, argument2, argument3, argument4, argument5) {
	//sets actual use of scrollbar, instead of just enabling mouse and touch scrolling
	gml_pragma("forceinline");
	argument0.scrollbarsize=argument1;
	argument0.scrollbarsizetype=argument2;
	argument0.scrollbarsprite=argument3;
	argument0.scrollbarcolor=argument4;
	argument0.scrollbacktexturemode=argument5;






}
