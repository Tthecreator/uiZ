///uiz_contain_surface(containinwhat)

//pcontaininwhat=p
//if p
if !surface_exists(global.uiz_containframe) then{
global.uiz_containframe=surface_create(window_get_width(),window_get_height())
}
surface_set_target(global.uiz_containframe)
//clear surface
/*
draw_set_blend_mode_ext(bm_zero,bm_zero)
draw_rectangle(0,0,window_get_width(),window_get_height(),0)
draw_set_blend_mode(bm_normal)
*/
//sdbm("executing draw_clear at place",1,random(99))
draw_clear_alpha(c_white,0);
//draw_set_blend_mode(bm_normal);
sdbm("using a slower surface drawing method for ",id, object_index)
