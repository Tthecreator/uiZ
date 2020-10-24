  if ds_exists(uselist,ds_type_list) then{
//kmouseover=uiz_mouse_isOver_object_leftCheck(id)
/*
if global.mouseoverframe=parent then{
if mouse_wheel_up() then{fromscroll=scroll;count=0;toscroll-=scrollspeed/height}
if mouse_wheel_down() then{fromscroll=scroll;count=0;toscroll+=scrollspeed/height}
toscroll=max(0,min(1,toscroll))
}
if fromscroll!=toscroll then{
var scrolldelta=toscroll-fromscroll
scroll=fromscroll+scrolldelta*uiz_animation_getFunction(count,graph);
count+=1/(countspeed*room_speed);
if count>=1 then{fromscroll=toscroll scroll=toscroll}
addy=min(0,-scroll*(height-parent.height))

uiz_drawdslist_checkview();
}
*/

if kmouseover=0 then{
uiz_drawdslist_deselect();
//uiz_drawdslist_updateviews(true,sx,sy+addy+h,slx-scrollbarwidth,sy+h+addy+strh)
/*
uiz_updater_FixViews();
sel=-1;
selection=-1;
//keepselected=-1;
updatescroll=true;
*/
}
}

/* */
/*  */
