///uiz_getvaluesy() - sets all important values for objects
var setHeight = true;
switch(posinframey){
case uiz_snaptop:
if setpointy=uiz_auto then{spy=uiz_top}else{spy=setpointy}
y=0
break;
case uiz_snapbottom:
if setpointy=uiz_auto then{spy=uiz_bottom}else{spy=setpointy}
y=parent.iheight;
break;
case uiz_center:
if setpointy=uiz_auto then{spy=uiz_middle}else{spy=setpointy}
y=parent.iheight/2;
break;
case uiz_fill:
y=0;
height=parent.iheight-(topmargin+bottommargin);
setHeight = false;//we already set the height, so we don't need to do it again.
break;
case fc: case fcy:
if setpointy=uiz_auto then{spy=uiz_top}else{spy=setpointy}
y=posvaly*(parent.iheight)
break;
case fcx:
if setpointy=uiz_auto then{spy=uiz_top}else{spy=setpointy}
y=posvaly*(parent.iwidth)
break;
case fcm:
if setpointy=uiz_auto then{spy=uiz_top}else{spy=setpointy}
y=mean(posvalx*parent.iwidth,posvaly*parent.iheight)
break;
case px:
if setpointy=uiz_auto then{spy=uiz_top}else{spy=setpointy}
y=posvaly
break;
case dp:
if setpointy=uiz_auto then{spy=uiz_top}else{spy=setpointy}
y=posvaly*uiz_dp
break;
case uiz_static:
//show_debug_message("[uiZ:INFO] posinframey is static @"+string(id))
break;
default:
show_debug_message("[uiZ:WARNING] invalid ("+string(posinframey)+") posinframey @"+string(id))
break;
}
if setHeight and posvalhtype!=uiz_nonpos then{
    height=uiz_getposy(posvalh,posvalhtype)-topmargin-bottommargin;
    switch(containposvy){
        default:
        case uiz_nocontain:
        break;
        case uiz_auto: 
            if posvalhtype=fcx or posvalhtype=fcm then{
                height = clamp(height,0,parent.height);
            }else{
                height = max(height,0);}
        break;
        case uiz_parentcontain:
            height = clamp(height,0,parent.height);
        break;
        case uiz_screencontain:
            height = clamp(height,0,global.screenpxheight);
        break;
    }
}

