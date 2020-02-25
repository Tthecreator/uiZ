///uiz_getposy(value,valuetype[px dp fc])
/*
Changes a value from a value and valuetype value to a single pixel value.
uiz_getposx(1,fc) will the objects width and uiz_getposx(0.5,fc) half of the parent's objects width.
Useful if you are programming your own uiz objects. 
*/
switch(argument1){
default:
sdbm("[uiZ|Warning]: given valuetype '"+argument1+"' not a correct value in function uiz_getposy. Reverting to px");
return argument0;
break;
case px:
return argument0;
break;
case pxmin:
return parent.height-argument0;
break;
case dp:
return argument0*uiz_dp;
break;
case dpmin:
return parent.height-argument0*uiz_dp;
break;
case fc: case fcy:
return round(argument0*(parent.iheight)-topmargin-bottommargin);
break;
case fcx:
return round(argument0*(parent.iwidth)-topmargin-bottommargin)
break;
case fcm:
return round(mean(argument0*(parent.iwidth),argument0*(parent.iheight))-topmargin-bottommargin)
break;
case fcmin:
if parent.iwidth>parent.iheight then{
return round(argument0*(parent.iheight)-topmargin-bottommargin)
}else{
return round(argument0*(parent.iwidth)-topmargin-bottommargin);
}
break;
case fcmax:
if parent.iwidth<parent.iheight then{
return round(argument0*(parent.iheight)-topmargin-bottommargin)
}else{
return round(argument0*(parent.iwidth)-topmargin-bottommargin);
}
break;
}


