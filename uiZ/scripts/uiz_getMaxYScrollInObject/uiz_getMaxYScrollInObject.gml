/// @description uiz_getMaxYScrollInObject(instance id)
/// @param instance id
function uiz_getMaxYScrollInObject(argument0) {
	return max(0,uiz_getMaxYInObject(argument0)-argument0.iheight);



}
