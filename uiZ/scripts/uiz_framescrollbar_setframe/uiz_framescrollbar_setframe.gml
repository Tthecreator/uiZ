/// @description uiz_framescrollbar_setframe(instanceid,frame id)
/// @param instanceid
/// @param frame id
function uiz_framescrollbar_setframe(argument0, argument1) {
	gml_pragma("forceinline");
	argument0.frame=argument1;
	ds_list_add(argument1.scrollupdateobjs,argument0);



}
