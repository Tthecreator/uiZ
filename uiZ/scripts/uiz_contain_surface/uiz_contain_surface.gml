/// @description uiz_contain_surface(containinwhat)
/// @param containinwhat
function uiz_contain_surface() {

	//pcontaininwhat=p
	//if p
	if !surface_exists(global.uiz_containframe) then{
	global.uiz_containframe=surface_create(window_get_width(),window_get_height())
	}
	surface_reset_target();
	surface_set_target(global.uiz_containframe)
	//clear surface
	/*
	gpu_set_blendmode_ext(bm_zero,bm_zero)
	draw_rectangle(0,0,window_get_width(),window_get_height(),0)
	gpu_set_blendmode(bm_normal)
	*/
	draw_clear_alpha(c_white,0);
	//gpu_set_blendmode(bm_normal);
	sdbm("[uiZ:Warning]using a slower surface drawing method for ",id, object_index)



}
