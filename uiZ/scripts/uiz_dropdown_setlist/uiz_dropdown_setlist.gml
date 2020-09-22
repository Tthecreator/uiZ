/// @description uiz_dropdown_setlist(instanceid,uselist[-1],masklist[-1])
/// @param instanceid
/// @param uselist[-1]
/// @param masklist[-1]
function uiz_dropdown_setlist(argument0, argument1, argument2) {
	gml_pragma("forceinline");
	argument0.uselist=argument1;
	argument0.masklist=argument2;



}
