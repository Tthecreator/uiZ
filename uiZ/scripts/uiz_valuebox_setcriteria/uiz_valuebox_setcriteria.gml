/// @description uiz_valuebox_setcriteria(instanceid,max[10000],min[-10000],decimals[true])
/// @param instanceid
/// @param max[10000]
/// @param min[-10000]
/// @param decimals[true]
function uiz_valuebox_setcriteria(argument0, argument1, argument2, argument3) {
	gml_pragma("forceinline");
	argument0.maxvalue=argument1;
	argument0.minvalue=argument2;
	argument0.allowdec=argument3;




}
