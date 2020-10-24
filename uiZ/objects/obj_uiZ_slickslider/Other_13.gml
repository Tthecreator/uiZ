update=0
updated=0
var hasmouse_old=hasmouse;
if mouse_check_button(mb_left)=false then{
hasmouse=0.5;
global.mousefrozen=false;
}

if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),p1x,p1y,p2x,p2y) then{
if hasmouse=false then{hasmouse=0.5}
if kmouseover=3 then{
snapx=uiz_getmouse_x()-p1x;
uiz_updater_step();
hasmouse=true;
global.mousefrozen=true;
}
}else{
if hasmouse<true then{hasmouse=false;}
}
if hasmouse!=hasmouse_old then{

uiz_fix_Background(hasmouse*2);
//uiz_updater_FixViews_area_selfmarked(p1x-bkmar,p1y-bkmar,p2x+bkmar,p2y+bkmar);
//pm1x=max(p1x-bkmar,rx+linemargin);
//pm2x=min(p2x+bkmar,rlx-linemargin);
uiz_updater_FixViews();
}

if hasmouse=true and kmouseover>0 then{uiz_set_cursor(cr_handpoint)}

