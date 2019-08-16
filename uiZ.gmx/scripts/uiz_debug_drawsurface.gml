///uiz_debug_drawsurface(surface,name);
/*
if !surface_exists(global.uiz_debugsurface){global.uiz_debugsurface=surface_create(obj_uiZ_controller.width,obj_uiZ_controller.height)}
surface_set_target(global.uiz_debugsurface)
if global.surfacedebugcount=0 and global.surfacedebugcounty=0 then{
draw_clear_alpha(c_white,0)
}
var co=0.33333
draw_surface_ext(argument0,global.surfacedebugcount,global.surfacedebugcounty,co,co,0,c_white,.5)
draw_set_color(c_black)
var xx=floor(global.surfacedebugcount)
draw_rectangle(global.surfacedebugcount,global.surfacedebugcounty,global.surfacedebugcount+surface_get_width(argument0)*co,surface_get_height(argument0)*co,true)
draw_text(global.surfacedebugcount,global.surfacedebugcounty,argument1)
//sdbm("drawing",argument1,global.surfacedebugcount)
global.surfacedebugcount+=surface_get_width(argument0)*co;
if global.surfacedebugcount>surface_get_width(argument0) then{
global.surfacedebugcount=0;
global.surfacedebugcounty+=surface_get_height(argument0)*co;
}
surface_reset_target()
