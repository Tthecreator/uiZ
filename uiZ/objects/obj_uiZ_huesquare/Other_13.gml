//kmouseover=uiz_mouse_isOver_object_leftCheck(id)
if kmouseover=2 then{
uiz_select(id)
}else{uiz_unselect(id)}
//update=0;
updated=0;
if selected=1 then{
if !mouse_check_button(mb_left) then{uiz_unselect(id)}else{
var mx = clamp(uiz_getmouse_x(),rx,rlx);
var my = clamp(uiz_getmouse_y(),ry,rly);
h=clamp((mx-rx)/width*255,0,255)
s=clamp(255-(my-ry)/height*255,0,255)
color=make_colour_hsv(h,s,v)
updated = true;
uiz_updater_step();
}}


