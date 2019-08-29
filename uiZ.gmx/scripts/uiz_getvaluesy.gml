///uiz_getvaluesy() - sets all important values for objects
var p=parent;
switch(posinframey){
case uiz_snaptop:
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalhtype!=uiz_nonpos then{height=uiz_getposy(posvalh,posvalhtype)}
//y=parent.topframemargin-height*spx
y=0
break;
case uiz_snapbottom:
if setpointy=uiz_auto then{spx=uiz_bottom}else{spx=setpointy}
if posvalhtype!=uiz_nonpos then{height=uiz_getposy(posvalh,posvalhtype)}
//y=p.height-parent.bottomframemargin-height*spx;
y=p.iheight;
break;
case uiz_center:
if setpointy=uiz_auto then{spx=uiz_middle}else{spx=setpointy}
if posvalhtype!=uiz_nonpos then{height=uiz_getposy(posvalh,posvalhtype)}
y=p.iheight/2;
break;
case uiz_fill:
y=0;
height=p.iheight-(topmargin+bottommargin);
break;
case fc: case fcy:
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalhtype!=uiz_nonpos then{height=uiz_getposy(posvalh,posvalhtype)}
//y=posvaly*(parent.height-parent.topframemargin-parent.bottomframemargin)-height*spx+parent.topframemargin
y=posvaly*(parent.iheight)
break;
case fcx:
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalhtype!=uiz_nonpos then{height=uiz_getposy(posvalh,posvalhtype)}
//y=posvalx*p.width-width*spx
//y=posvaly*(parent.width-parent.leftframemargin-parent.rightframemargin)-height*spx+parent.topframemargin
y=posvaly*(parent.iwidth)
break;
case fcm:
//if setpointx=uiz_auto then{spx=uiz_top}else{spx=setpointx}
//if setpointy=uiz_auto then{spy=uiz_top}else{spy=setpointy}
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalhtype!=uiz_nonpos then{height=uiz_getposy(posvalh,posvalhtype)}
//y=mean(posvalx*p.width-width*spx,posvaly*p.height-height*spy)+parent.topframemargin
y=mean(posvalx*p.iwidth,posvaly*p.iheight)
break;
case px:
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalhtype!=uiz_nonpos then{height=uiz_getposy(posvalh,posvalhtype)}
//y=posvaly-height*spx+parent.topframemargin
y=posvaly
break;
case dp:
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalhtype!=uiz_nonpos then{height=uiz_getposy(posvalh,posvalhtype)}
//y=posvaly*display_get_dpi_y()-height*spx+parent.topframemargin
y=posvaly*uiz_dp
break;
case uiz_static:
//show_debug_message("[uiZ:INFO] posinframey is static @"+string(id))
//if posvalhtype!=uiz_nonpos then{height=uiz_getposy(posvalh,posvalhtype)+posvalhpxdif}
break;
default:
show_debug_message("[uiZ:WARNING] invalid ("+string(posinframey)+") posinframey @"+string(id))
break;
}

