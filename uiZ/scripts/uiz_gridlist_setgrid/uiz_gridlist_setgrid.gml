/// @description uiz_gridlist_setgrid(instanceid,columnlist[-1],maingrid[-1])
/// @param instanceid
/// @param columnlist[-1]
/// @param maingrid[-1]
function uiz_gridlist_setgrid(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.mainlist=argument1;
	argument0.maingrid=argument2;



}
