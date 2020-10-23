/// @description uiz_c(objectindex)
/// @param objectindex
function uiz_c(argument0) {
	//creates an object at 0,0. and returns the created instance
	gml_pragma("forceinline")
	//return instance_create(0,0,argument0)
	return instance_create_layer(0, 0, global.uiz_layer, argument0);
}
