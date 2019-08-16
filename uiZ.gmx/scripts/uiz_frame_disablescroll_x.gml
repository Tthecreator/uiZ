///uiz_frame_disablescroll_x(frame instance id,reset to top)
with(argument0){
var ret=false;
scrollx=false
mscrollbarx=0;
if argument1=true and addx!=0 then{
addx=0;
ret=true;
}

if scrolly=false and (snapk=true or snapm=true) then{if snapm then{uiz_set_cursor(cr_default)}snapk=false; snapm=false; global.mousefrozen=false;}
return ret;
}
