/// @description uiz_treelist_setScrollbarWidth(instanceid,width[16],widthtype[px])
/// @param instanceid
/// @param width[16]
/// @param widthtype[px]
function uiz_treelist_setScrollbarWidth(argument0, argument1, argument2) {
	argument0.scrollbarwidth=argument1;
	argument0.scrollbarwidthtype=argument2;
	uiz_treelist_updateScrollbar(argument0);



}
