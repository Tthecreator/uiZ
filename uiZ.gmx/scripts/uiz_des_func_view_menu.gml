with(obj_uiz_designer){
if !instance_exists(viewmenu) then{
viewmenu=instance_create(0,0,obj_uiZ_mousemenu)
viewmenu.uselist=viewtypelist
viewmenu.y=uiz_getmouse_y()
viewmenu.x=uiz_getmouse_x()
uiz_fixmousemenupos(viewmenu)
}
}

