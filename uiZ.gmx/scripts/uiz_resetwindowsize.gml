///uiz_resetwindowsize()
/*
Requires manual checking for a compatible os.
A script automatically called by the uiZ_controller object when it detects a change in window size.
Fixes the application surface, and resizes the obj_uiZ_controller and other obj_uiZ_ object properly. 
*/
var w=max(window_get_width(),1)
var h=max(window_get_height(),1)
//surface_resize(application_surface,w,h)
//room_width=w
//room_height=h
global.screenpxwidth=window_get_width();
global.screenpxheight=window_get_height();
sdbm("[uiZ:INFO]Resetting size")
if instance_exists(obj_uiZ_controller){
obj_uiZ_controller.width=w
obj_uiZ_controller.height=h
obj_uiZ_controller.iwidth=w;
obj_uiZ_controller.iheight=h;
obj_uiZ_controller.rlx=w
obj_uiZ_controller.rly=h
obj_uiZ_controller.ilx=w
obj_uiZ_controller.ily=h
obj_uiZ_controller.cntnx=0
obj_uiZ_controller.cntny=0
obj_uiZ_controller.cntnlx=w
obj_uiZ_controller.cntnly=h
with(obj_uiZ_controller){
if surface_exists(uiz_surf){surface_resize(uiz_surf,width,height)}else{
uiz_surf=surface_create(width,height);
}
if uiz_useappsurf=false then{
if surface_exists(uiz_useappsurf){surface_resize(uiz_useappsurf,width,height)}else{
uiz_useappsurf=surface_create(width,height);
}
}
}
//sdbm("fixing al children because of window resize")
uiz_fixchildren(obj_uiZ_controller.id,1)
}