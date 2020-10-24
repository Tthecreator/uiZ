/// @description uiz_swipicon_onDoubleClick(instanceid, script[-1], argument[0])
/// @param instanceid
/// @param  script[-1]
/// @param  argument[0]
function uiz_swipicon_onDoubleClick(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.onDoubleClick = argument1;
	argument0.onDoubleClickArgument = argument2;



}
