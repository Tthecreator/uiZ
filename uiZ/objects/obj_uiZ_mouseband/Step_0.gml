kmouseover=uiz_mouse_isOver_object_leftCheck(id)
update=false;
updated=false;
movedx=0;
movedy=0;

if kmouseover>=3 then{updated=true global.mousefrozen=1; 
hasmouse=true; oldx=uiz_getmouse_x();
oldy=uiz_getmouse_y();}
if kmouseover=2 or hasmouse=true then{update=true
if uiz_getmouse_x()>0 and uiz_getmouse_x()<window_get_width() then{movedx=oldx-uiz_getmouse_x();}
if uiz_getmouse_y()>0 and uiz_getmouse_y()<window_get_height() then{movedy=oldy-uiz_getmouse_y();}
}

if !mouse_check_button(mb_left) and hasmouse=true then{global.mousefrozen=0; hasmouse=false;}


