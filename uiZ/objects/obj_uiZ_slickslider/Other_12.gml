if kmouseover<=1 and hasmouse=true then{
hasmouse=false;
updated=1
}
if kmouseover=0 and global.mousefrozen=0 then{
hasmouse=0;
}

if hasmouse=false and kmouseover=4 then{
uiz_updater_step();
//set animation
if anim=0 then{anim=1; animationcount=0;
oldvalue=value;
newvalue=(uiz_getmouse_x()-rx-w/2)/(width-w)
}else{
oldvalue=value;
newvalue=(uiz_getmouse_x()-rx-w/2)/(width-w)
animationcount=0;
}
}

if kmouseover>0 then{uiz_set_cursor(cr_handpoint)}

