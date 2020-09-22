/// @description uiz_mousebutton_setlist(instanceid,list[-1],actionlist[-1],enabledlist[-1])
/// @param instanceid
/// @param list[-1]
/// @param actionlist[-1]
/// @param enabledlist[-1]
function uiz_mousebutton_setlist(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.dslist=argument1;
	argument0.actionlist=argument2;
	argument0.enabledlist=argument3;



}
