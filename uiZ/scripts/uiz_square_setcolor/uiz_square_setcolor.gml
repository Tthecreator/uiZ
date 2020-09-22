/// @description uiz_square_setcolor(instanceid,color[c_white])
/// @param instanceid
/// @param color[c_white]
function uiz_square_setcolor(argument0, argument1) {
	gml_pragma("forceinline");
	argument0.color=argument1;
	uiz_updater_FixViews_with(argument0);



}
