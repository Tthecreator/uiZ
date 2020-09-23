/// @description uiz_drawdslist_setlist(instanceid,uselist[-1],usesprlist[-1],useimglist[-1])
/// @param instanceid
/// @param uselist[-1]
/// @param usesprlist[-1]
/// @param useimglist[-1]
function uiz_drawdslist_setlist(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.uselist=argument1;
	argument0.usesprlist=argument2;
	argument0.useimglist=argument3;
	uiz_updater_FixViews_with(argument0);


}
