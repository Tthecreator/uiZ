/// @description uiz_getMaxXScrollInObject(instance id)
/// @param instance id
function uiz_getMaxXScrollInObject(argument0) {
	return max(0,uiz_getMaxXInObject(argument0)-argument0.iwidth);



}
