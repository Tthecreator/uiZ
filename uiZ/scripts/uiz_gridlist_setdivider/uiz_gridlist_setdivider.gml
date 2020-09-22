/// @description uiz_gridlist_setdivider(instanceid,enable mouse[true], draw[true],color[c_black])
/// @param instanceid
/// @param enable mouse[true]
/// @param  draw[true]
/// @param color[c_black]
function uiz_gridlist_setdivider(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.enabledivider=argument1;
	argument0.drawdivider=argument2;
	argument0.dividercolor=argument3;





}
