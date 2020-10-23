function uiz_init() {
	/*
	Script that takes no arguments and return nothing
	It has to be called before any other uiz related scripts, functions or objects will be used.
	*/
	if !instance_exists(obj_uiZ_controller) then{
		global.uiz_layer = layer_create(depth, "uiZ instance layer");
		uiz_c(obj_uiZ_controller);
		
		}



}
