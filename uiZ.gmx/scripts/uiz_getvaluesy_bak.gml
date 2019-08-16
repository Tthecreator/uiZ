///uiz_getvaluesy() - sets all important values for objects
/*
var p=parent;
var spx,spy
switch(posinframey){
case uiz_snaptop:
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalytype!=uiz_nonpos then{height=uiz_getposy(posvaly,posvalytype)}
y=topframemargin-height*spx
break;
case uiz_snapbottom:
if setpointy=uiz_auto then{spx=uiz_bottom}else{spx=setpointy}
if posvalytype!=uiz_nonpos then{height=uiz_getposy(posvaly,posvalytype)}
y=p.height-bottomframemargin-height*spx;
break;
case uiz_center:
if setpointy=uiz_auto then{spx=uiz_middle}else{spx=setpointy}
if posvalytype!=uiz_nonpos then{height=uiz_getposy(posvaly,posvalytype)}
y=p.height/2-height*spx;
break;
case uiz_fill:
y=topframemargin;
height=p.height-bottomframemargin-topframemargin;
break;
case fc:
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalytype!=uiz_nonpos then{height=uiz_getposy(posvaly,posvalytype)}
y=posvaly*p.height-height*spx
break;
case px:
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalytype!=uiz_nonpos then{height=uiz_getposy(posvaly,posvalytype)}
y=posvaly-height*spx
break;
case dp:
if setpointy=uiz_auto then{spx=uiz_top}else{spx=setpointy}
if posvalytype!=uiz_nonpos then{height=uiz_getposy(posvaly,posvalytype)}
y=posvaly*display_get_dpi_y()-height*spx
break;
case uiz_static:
//show_debug_message("[uiZ:INFO] posinframey is static @"+string(id))
if posvalytype!=uiz_nonpos then{height=uiz_getposy(posvaly,posvalytype)}
break;
default:
show_debug_message("[uiZ:WARNING] invalid posinframey @"+string(id))
break;
}
