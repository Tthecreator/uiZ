///uiz_getvaluesy() - sets all important values for objects
/*
var p=parent;
var spx,spy
switch(posinframex){
case uiz_snapleft:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
if posvalxtype!=uiz_nonpos then{width=uiz_getposx(posvalx,posvalxtype)}
x=leftframemargin-width*spx
break;
case uiz_snapright:
if setpointx=uiz_auto then{spx=uiz_right}else{spx=setpointx}
if posvalxtype!=uiz_nonpos then{width=uiz_getposx(posvalx,posvalxtype)}
x=p.width-rightframemargin-width*spx;
break;
case uiz_center:
if setpointx=uiz_auto then{spx=uiz_middle}else{spx=setpointx}
if posvalxtype!=uiz_nonpos then{width=uiz_getposx(posvalx,posvalxtype)}
x=p.width/2-width*spx;
break;
case uiz_fill:
x=leftframemargin;
width=p.width-rightframemargin-leftframemargin;
break;
case fc:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
if posvalxtype!=uiz_nonpos then{width=uiz_getposx(posvalx,posvalxtype)}
x=posvalx*p.width-width*spx
break;
case px:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
if posvalxtype!=uiz_nonpos then{width=uiz_getposx(posvalx,posvalxtype)}
x=posvalx-width*spx
break;
case dp:
if setpointx=uiz_auto then{spx=uiz_left}else{spx=setpointx}
if posvalxtype!=uiz_nonpos then{width=uiz_getposx(posvalx,posvalxtype)}
x=posvalx*display_get_dpi_x()-width*spx
break;
case uiz_static:
if posvalxtype!=uiz_nonpos then{width=uiz_getposx(posvalx,posvalxtype)}
//show_debug_message("[uiZ:INFO] posinframey is static @"+string(id))
break;
default:
show_debug_message("[uiZ:WARNING] invalid posinframey @"+string(id))
break;
}
