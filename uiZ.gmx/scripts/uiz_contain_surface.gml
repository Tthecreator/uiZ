///uiz_contain_surface(containinwhat)

//pcontaininwhat=p
//if p
if !surface_exists(global.uiz_containframe) then{
global.uiz_containframe=surface_create(window_get_width(),window_get_height())
}
surface_reset_target();
surface_set_target(global.uiz_containframe)
//clear surface
/*
draw_set_blend_mode_ext(bm_zero,bm_zero)
draw_rectangle(0,0,window_get_width(),window_get_height(),0)
draw_set_blend_mode(bm_normal)
*/
draw_clear_alpha(c_white,0);
//draw_set_blend_mode(bm_normal);
sdbm("[uiZ:Warning]using a slower surface drawing method for ",id, object_index)