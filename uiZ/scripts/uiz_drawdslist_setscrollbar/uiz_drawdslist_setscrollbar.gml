/// @description uiz_drawdslist_setscrollbar(instanceid,scrollbarwidth[0.16],scrollbarwidthtype[dp],scrollbarsprite[spr_uiZ_scrollbar],scrollbarbacktexmode[uiz_texturemode_fill],scrollbarAnimationTime[0.2],scrollbarAnimation[uiz_smoothstep],scrollspeed[100])
/// @param instanceid
/// @param scrollbarwidth[0.16]
/// @param scrollbarwidthtype[dp]
/// @param scrollbarsprite[spr_uiZ_scrollbar]
/// @param scrollbarbacktexmode[uiz_texturemode_fill]
/// @param scrollbarAnimationTime[0.2]
/// @param scrollbarAnimation[uiz_smoothstep]
/// @param scrollspeed[100]
function uiz_drawdslist_setscrollbar(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	gml_pragma("forceinline");
	argument0.scrollbarwidth=argument1;
	argument0.scrollbarwidthtype=argument2;
	argument0.scrollbarsprite=argument3;
	argument0.scrollbarbacktexmode=argument4;
	argument0.scrollbarAnimationTime=argument5;
	argument0.scrollbarAnimation=argument6;
	argument0.scrollspeed=argument7;



}
