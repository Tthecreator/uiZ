///uiz_resetwindowsize()
/*
Requires manual checking for a compatible os.
A script automatically called by the uiZ_controller object when it detects a change in window size.
Fixes the application surface, and resizes the obj_uiZ_controller and other obj_uiZ_ object properly. 
*/

var ww = window_get_width();
var wh = window_get_height();
var changed = false;
if (ww % 2 == 1){--ww; changed=true}
if (wh % 2 == 1){--wh; changed=true}
var w=ww;
var h=wh;

if changed{ window_set_size(w,h); }

//var w=max(window_get_width(),1)
//var h=max(window_get_height(),1)

//surface_resize(application_surface,w,h)
//room_width=w
//room_height=h
global.screenpxwidth=w;
global.screenpxheight=h;
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
if surface_exists(uiz_surf){
sdbm("[uiZ:INFO]Resizing uiz_surf")
surface_resize(uiz_surf,width,height)}else{
sdbm("[uiZ:INFO]Creating uiz_surf")
uiz_surf=surface_create(width,height);
}
if uiz_useappsurf=false then{
if surface_exists(uiz_appsurf){
sdbm("[uiZ:INFO]Resizing uiz_appsurf")
surface_resize(uiz_appsurf,width,height)}else{
sdbm("[uiZ:INFO]Creating uiz_appsurf")
uiz_appsurf=surface_create(width,height);
}
}
}
//sdbm("fixing al children because of window resize")
uiz_fixChildren(obj_uiZ_controller.id,1)
}
