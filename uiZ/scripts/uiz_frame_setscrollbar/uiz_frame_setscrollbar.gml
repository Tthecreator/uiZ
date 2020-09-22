/// @description uiz_frame_setscrollbar(instanceid,scrollbarx[!global.systemsupportstouch],scrollbary[!global.systemsupportstouch])
/// @param instanceid
/// @param scrollbarx[!global.systemsupportstouch]
/// @param scrollbary[!global.systemsupportstouch]
function uiz_frame_setscrollbar(argument0, argument1, argument2) {
	//sets actual use of scrollbar, instead of just enabling mouse and touch scrolling
	gml_pragma("forceinline");
	argument0.scrollbarx=argument1;
	argument0.scrollbary=argument2;



}
