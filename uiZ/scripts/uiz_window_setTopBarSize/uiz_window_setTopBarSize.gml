/// @description uiz_window_setTopBarSize(instanceid, barsize[0.25], barsizevaltype[dp])
/// @param instanceid
/// @param  barsize[0.25]
/// @param  barsizevaltype[dp]
function uiz_window_setTopBarSize(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.barsize=argument1;
	argument0.barsizevaltype=argument2;



}
