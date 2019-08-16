if global.uiz_shader=1 and uiz_shader=1 then{
//uses shaders
surface_set_target(uiz_surf)
}else{
//uses surfaces
//surface_set_target(pcontaininwhat.containframe)
if !surface_exists(global.uiz_containframe) then{
global.uiz_containframe=surface_create(window_get_width(),window_get_height())
}
surface_set_target(global.uiz_containframe)
}

