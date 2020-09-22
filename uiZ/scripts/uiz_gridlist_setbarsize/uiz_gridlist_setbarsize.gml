/// @description uiz_gridlist_setbarsize(instanceid,barsize[20],barsizetype[px],minbarwidth[20],minbarwidthtype[px])
/// @param instanceid
/// @param barsize[20]
/// @param barsizetype[px]
/// @param minbarwidth[20]
/// @param minbarwidthtype[px]
function uiz_gridlist_setbarsize(argument0, argument1, argument2, argument3, argument4) {
	gml_pragma("forceinline");
	argument0.barsize=argument1;
	argument0.barsizetype=argument2;
	argument0.minbarsize=argument3;
	argument0.minbarsizetype=argument4;




}
