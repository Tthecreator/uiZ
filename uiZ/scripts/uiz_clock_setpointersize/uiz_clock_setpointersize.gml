/// @description uiz_clock_setpointersize(instanceid,size[0.5],sizetype[fcm])
/// @param instanceid
/// @param size[0.5]
/// @param sizetype[fcm]
function uiz_clock_setpointersize(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.pointersize=argument1;
	argument0.pointersizetype=argument2;





}
