///uiz_getposy(value,valuetype[px dp fc])
/*
Changes a value from a value and valuetype value to a single pixel value.
uiz_getposx(1,fc) will the objects width and uiz_getposx(0.5,fc) half of the parent's objects width.
Useful if you are programming your own uiz objects. 
*/
var ret=0
var clmp=0;
switch(argument1){
case px:
ret=argument0;
break;
case pxmin:
ret=parent.height-argument0;
break;
case dp:
ret=argument0*uiz_dp;
break;
case dpmin:
ret=parent.height-argument0*uiz_dp;
break;
case fc: case fcy:
ret=round(argument0*(parent.iheight)-topmargin-bottommargin);
break;
case fcx:
ret=round(argument0*(parent.iwidth)-topmargin-bottommargin)
clmp=1;
break;
case fcm:
ret=round(mean(argument0*(parent.iwidth),argument0*(parent.iheight))-topmargin-bottommargin)
clmp=1;
break;

case fcmin:
if parent.iwidth>parent.iheight then{
ret=round(argument0*(parent.iheight)-topmargin-bottommargin)
}else{
ret=round(argument0*(parent.iwidth)-topmargin-bottommargin);
}
break;
case fcmax:
if parent.iwidth<parent.iheight then{
ret=round(argument0*(parent.iheight)-topmargin-bottommargin)
}else{
ret=round(argument0*(parent.iwidth)-topmargin-bottommargin);
}
break;
}
ret=ret-(topmargin+bottommargin)
switch(containposvy){
case uiz_nocontain:
return ret;
break;
case uiz_auto: 
if clmp=1 then{
return clamp(ret,0,parent.height);
}else{
return max(ret,0);}
break;
case uiz_parentcontain:
return clamp(ret,0,parent.height);
break;
case uiz_screencontain:
return clamp(ret,0,global.screenpxheight);
break;
}

