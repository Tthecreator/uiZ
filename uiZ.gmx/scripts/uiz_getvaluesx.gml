///uiz_getvaluesx() - sets all important values for objects
var p=parent;
//var spx,spy;
switch(posinframex){
case uiz_snapleft:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
if posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)+posvalwpxdif}
//x=parent.leftframemargin-width*spx
x=0
break;
case uiz_snapright:
if setpointx=uiz_auto then{spx=uiz_right}else{spx=setpointx}
if posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)+posvalwpxdif}
//x=p.width-parent.rightframemargin-width*spx;
x=p.iwidth;
break;
case uiz_center:
if setpointx=uiz_auto then{spx=uiz_middle}else{spx=setpointx}
if posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)+posvalwpxdif;}
x=p.iwidth/2;
break;
case uiz_fill:
//x=parent.leftframemargin;
x=0;
//width=p.width-parent.rightframemargin-parent.leftframemargin;
width=p.iwidth;
break;
case fc: case fcx:

if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
if posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)+posvalwpxdif;}
//x=posvalx*(parent.width-parent.leftframemargin-parent.rightframemargin)-width*spx+parent.leftframemargin
x=posvalx*parent.iwidth
break;
case fcy:
if setpointx=uiz_auto then{spx=uiz_top}else{spx=setpointx}
if posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)+posvalwpxdif}
//x=posvalx*p.height-height*spx
//x=posvalx*(parent.height-parent.topframemargin-parent.bottomframemargin)-width*spx+parent.leftframemargin
x=posvalx*parent.iheight
break;
case fcm:
//if setpointx=uiz_auto then{spx=uiz_top}else{spx=setpointx}
//if setpointy=uiz_auto then{spy=uiz_top}else{spy=setpointy}
if setpointx=uiz_auto then{spx=uiz_top}else{spx=setpointx}
if posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)+posvalwpxdif}
//x=mean(posvalx*p.width-width*spx,posvaly*p.height-height*spy)+parent.leftframemargin
x=mean(posvalx*p.iwidth,posvaly*p.iheight);
break;
case px:
//show_debug_message("[uiZ:INFO] posinframey is px @"+string(id))
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
if posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)+posvalwpxdif}
//x=posvalx-width*spx+parent.leftframemargin
x=posvalx;
break;
case dp:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
if posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)+posvalwpxdif}
//x=posvalx*display_get_dpi_x()-width*spx+parent.leftframemargin
x=posvalx*uiz_dp;
break;
case uiz_static:
//if posvalwtype!=uiz_nonpos then{width=uiz_getposx(posvalw,posvalwtype)+posvalwpxdif}
//show_debug_message("[uiZ:INFO] posinframex is static @"+string(id))
break;
default:
show_debug_message("[uiZ:WARNING] invalid ("+string(posinframex)+") posinframex @"+string(id))
break;
}

