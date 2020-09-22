//get snapping values
if uiz_frame_getscrolling()=false then{
var dofix=false;
//check if mouse is over edge
var mouse_over_last=mouse_over;
mouse_over=false;

if mouse_check_button(mb_left) then{
//check the animationbutton
if (menubutton!=noone and menubutton.kmouseover=3) or (newvalue=true and blackframe!=noone and blackframe.kmouseover=3) then{
if inanim=0 or inanim=1 then{inanim=uiz_sc(snapanimationtime);newvalue=!value;}else{
newvalue=!newvalue;
var animval=1-uiz_animation_getFunction(inanim,snapanimation);
inanim=uiz_animation_revertFunction(animval,snapanimation);
};
}
if posmode = uiz_horizontal then{
if posinframex=uiz_snapleft then{
if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rlx-mw*mouseborderinside,ry,rlx+mw*mouseborderoutside,rly) then{
mouse_over=true;
}
}else{
if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx-mw*mouseborderoutside,ry,rx+mw*mouseborderinside,rly) then{
mouse_over=true;
}
}
}else{
if posinframey=uiz_snaptop then{
if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx,rly-mw*mouseborderinside,rlx,rly+mw*mouseborderoutside) then{
mouse_over=true;
}
}else{
if point_in_rectangle(uiz_getmouse_x(),uiz_getmouse_y(),rx,ry-mw*mouseborderoutside,rlx,ry+mw*mouseborderinside) then{
mouse_over=true;
}
}
}

}else{
if moves_mouse=true then{
var setpoint;
if posmode = uiz_horizontal then{
setpoint=setpointx;
}else{
setpoint=setpointy;
}
/*
left:
    left to right:
        newvalue = true;
        setpointx goes from 1 to 0;
        an = 1-setpoint
    right to left:
        newvavlue = false;
        setpoint goes from 0 to 1;
        an = setpoint

right:
    right to left:
        newvalue=true;
        setpointx goes from 0 to 1;
        an = setpoint
    left to right:
        newvalue=false;
        setpointx goes from 1 to 0;
        an = 1-setpoint;

*/
if newvalue^posbool=false then{
inanim = uiz_animation_revertFunction(1-setpoint,snapanimation);
}else{
inanim = uiz_animation_revertFunction(setpoint,snapanimation);
}
moves_mouse=false;
uiz_mouse_unFreeze();
}
}
//check if mouse over edge is moving
if mouse_check_button(mb_left) and moves_mouse=false and (mouse_over=true or mouse_over_last=true) and global.uiz_mouseswiped>mmms then{
var sx = global.uiz_mouseswipedx;
var sy = global.uiz_mouseswipedy;
mouse_snapx=uiz_getmouse_x();
mouse_snapy=uiz_getmouse_y();
if posmode = uiz_horizontal then{
movewindow = abs(darctan(sy/sx));//get how much the mouse moves in the right direction vs the wrong one.
}else{
movewindow = abs(darctan(sx/sy));//get how much the mouse moves in the right direction vs the wrong one.
}
if movewindow<slideWindowSizeDegrees then{
moves_mouse=true;
uiz_mouse_freeze();
}
}
//add mouse panel dragging
if moves_mouse=true then{
var ss;
if posmode = uiz_horizontal then{
var mouse_val=(uiz_getmouse_x()-mouse_snapx)/width;
setpointx=clamp((1-value)-mouse_val*posmult,0,1);
if posmult=-1 then{
    setpointx = 1-setpointx;
    uiz_slideframe_blackframe_calculate(1-setpointx);
    uiz_slideframe_menubutton_calculate(1-setpointx);
}else{
    uiz_slideframe_blackframe_calculate(setpointx);
    uiz_slideframe_menubutton_calculate(setpointx);
}
ss = global.uiz_mouseswipedx;
}else{
var mouse_val=(uiz_getmouse_y()-mouse_snapy)/height;
setpointy=clamp((1-posbool)-mouse_val,0,1);
if posmult=-1 then{
    setpointy = 1-setpointy;
    uiz_slideframe_blackframe_calculate(1-setpointy);
    uiz_slideframe_menubutton_calculate(1-setpointy);
}else{
    uiz_slideframe_blackframe_calculate(setpointy);
    uiz_slideframe_menubutton_calculate(setpointy);
}
ss = global.uiz_mouseswipedy;
}
//set to what value we are going
if ss*posmult>0 then{newvalue=true;}else{newvalue=false;}
dofix=true;
}else{


if inanim>0 then{
//sdbm("inanim",inanim)
var setp = 0;
inanim+=uiz_sc(snapanimationtime);
if inanim>=1 then{
inanim=1
//sdbm("end inanim",inanim)
value=newvalue;
inanim=0;
setp=1;
}else{
setp = uiz_animation_getFunction(inanim,snapanimation);
}

if (newvalue^posbool)=false then{
      setp = 1-setp;
}
if posmode = uiz_horizontal then{
    setpointx = setp;
}else{
    setpointy = setp;
}
if posmult=-1 then{
    uiz_slideframe_blackframe_calculate(1-setp);
    uiz_slideframe_menubutton_calculate(1-setp);
}else{
    uiz_slideframe_blackframe_calculate(setp);
    uiz_slideframe_menubutton_calculate(setp);
}
dofix=true;
}
}
if dofix then{
uiz_fixslideframepos(id)
uiz_fixChildren(id,false)
}

}

/* */
/*  */
