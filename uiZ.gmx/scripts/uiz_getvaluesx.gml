///uiz_getvaluesx() - sets all important values for objects
var p=parent;
var setWidth = true;
switch(posinframex){
case uiz_snapleft:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
x=0
break;
case uiz_snapright:
if setpointx=uiz_auto then{spx=uiz_right}else{spx=setpointx}
x=p.iwidth;
break;
case uiz_center:
if setpointx=uiz_auto then{spx=uiz_middle}else{spx=setpointx}
x=p.iwidth/2;
break;
case uiz_fill:
x=0;
width=p.iwidth-leftmargin-rightmargin;
setWidth = false;//we already set the width, so we don't need to do it again.
break;
case fc: case fcx:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
x=posvalx*parent.iwidth
break;
case fcy:
if setpointx=uiz_auto then{spx=uiz_top}else{spx=setpointx}
x=posvalx*parent.iheight
break;
case fcm:
if setpointx=uiz_auto then{spx=uiz_top}else{spx=setpointx}
x=mean(posvalx*p.iwidth,posvaly*p.iheight);
break;
case px:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
x=posvalx;
break;
case dp:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
x=posvalx*uiz_dp;
break;
case uiz_static:
setWidth = false;
//show_debug_message("[uiZ:INFO] posinframex is static @"+string(id))
break;
default:
show_debug_message("[uiZ:WARNING] invalid ("+string(posinframex)+") posinframex @"+string(id))
break;
}
if setWidth and posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)}
