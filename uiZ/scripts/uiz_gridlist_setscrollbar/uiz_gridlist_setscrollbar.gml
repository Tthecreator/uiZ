/// @description uiz_gridlist_setscrollbar(instanceid,scrollbarwidth[0.15],scrollbarwidthtype[dp],scrollbarsprite[spr_uiZ_scrollbar_16],scrollbarbacktexmode[uiz_texturemode_fill],scrollspeed[1],scrollbarAnimation[uiz_smoothstep],scrollbarAnimationTime[0.3])
/// @param instanceid
/// @param scrollbarwidth[0.15]
/// @param scrollbarwidthtype[dp]
/// @param scrollbarsprite[spr_uiZ_scrollbar_16]
/// @param scrollbarbacktexmode[uiz_texturemode_fill]
/// @param scrollspeed[1]
/// @param scrollbarAnimation[uiz_smoothstep]
/// @param scrollbarAnimationTime[0.3]
function uiz_gridlist_setscrollbar(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	gml_pragma("forceinline");
	argument0.scrollbarwidth=argument1;
	argument0.scrollbarwidthtype=argument2;
	argument0.scrollbarsprite=argument3;
	argument0.scrollbarbacktexmode=argument4;
	argument0.scrollspeed=argument5;
	argument0.scrollbarAnimation=argument6;
	argument0.scrollbarAnimationTime=argument7;




}
