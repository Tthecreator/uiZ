///uiz_frame_disablescroll_y(frame instance id,reset to top)
with(argument0){
var ret=false;
scrolly=false
mscrollbary=0;
if argument1=true and addy!=0 then{
addy=0;
ret=true;
}

if scrollx=false and (snapk=true or snapm=true) then{if snapm then{uiz_set_cursor(cr_default)}snapk=false; snapm=false; global.mousefrozen=false;}
return ret;
}
