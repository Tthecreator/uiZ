///uiz_setWindowSize(width, height)
/*
Requires manual checking for a compatible os.
Changes the os window size and with it the application surface and properly resizes the obj_uiZ_controller and other obj_uiZ objects.
*/
if !(os_type=os_browser) then{
window_set_size(argument0,argument1)
}
surface_resize(application_surface,argument0,argument1)
room_width=argument0
room_height=argument1
global.screenpxwidth=argument0
global.screenpxheight=argument1
if instance_exists(obj_uiZ_controller){
obj_uiZ_controller.width=argument0
obj_uiZ_controller.height=argument1
obj_uiZ_controller.rlx=argument0
obj_uiZ_controller.rly=argument1
obj_uiZ_controller.cntnx=0
obj_uiZ_controller.cntny=0
obj_uiZ_controller.cntnlx=obj_uiZ_controller.width
obj_uiZ_controller.cntnly=obj_uiZ_controller.height
uiz_fixChildren(obj_uiZ_controller.id,1)
}
