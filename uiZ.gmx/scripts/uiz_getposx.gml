///uiz_getposx(value,valuetype[px dp fc or sa_])
/*
Changes a value from a value and valuetype value to a single pixel value.
uiz_getposx(1,fc) will the objects width and uiz_getposx(0.5,fc) half of the parent's objects width.
Useful if you are programming your own uiz objects. 
*/
var ret=0;
var clmp=0;
switch(argument1){
case px:
ret=argument0;
break;
case pxmin:
ret=parent.width-argument0
break;
case dp:
ret=argument0*uiz_dp
break;
case dpmin:
ret=parent.width-argument0*uiz_dp
break;
case fc: case fcx:
ret=round(argument0*(parent.iwidth)-leftmargin-rightmargin);
break;
case fcy:
ret=round(argument0*(parent.iheight)-leftmargin-rightmargin)
clmp=1;
break;
case fcm:
ret=round(mean(argument0*(parent.iwidth),argument0*(parent.iheight))-leftmargin-rightmargin)
clmp=1
break;
case fcmin:
if parent.iwidth>parent.iheight then{
ret=round(argument0*(parent.iheight)-leftmargin-rightmargin)
}else{
ret=round(argument0*(parent.iwidth)-leftmargin-rightmargin);
}
break;
case fcmax:
if parent.iwidth<parent.iheight then{
ret=round(argument0*(parent.iheight)-leftmargin-rightmargin)
}else{
ret=round(argument0*(parent.iwidth)-leftmargin-rightmargin);
}
break;
//sa_px
case sa_px: case sax_px:
ret=parent.width-argument0*2-leftmargin-rightmargin
break;
case say_px:
ret=parent.height-argument0*2-leftmargin-rightmargin
clmp=1;
break;
//sa_fc
case sa_fc: case sax_fc:
ret=parent.width-argument0*(parent.iwidth)*2-leftmargin-rightmargin
break;
case saxh_fc:
ret=parent.height-argument0*(parent.iwidth)*2-leftmargin-rightmargin
clmp=1;
break;
case sayw_fc:
ret=parent.width-argument0*(parent.iheight)*2-leftmargin-rightmargin
break;

case say_fc:
ret=parent.height-argument0*(parent.iheight)*2-leftmargin-rightmargin
clmp=1;
break;
//sa_dp
case sa_dp: case sax_dp:
ret=parent.width-argument0*uiz_dp*2-leftmargin-rightmargin
break;
case say_dp:
ret=parent.height-argument0*uiz_dp*2-leftmargin-rightmargin
clmp=1;
break;
case sayw_dp:
ret=parent.width-argument0*uiz_dp*2-leftmargin-rightmargin
break;
case saxh_dp:
ret=parent.height-argument0*uiz_dp*2-leftmargin-rightmargin
clmp=1;
break;
//saa
case saa: case saax: case saaw:
ret=parent.width-uiz_getposx_simple(posvalx,posinframex)-leftmargin-rightmargin
break;
case saay:
ret=parent.height-uiz_getposy_simple(posvaly,posinframey)-leftmargin-rightmargin
clmp=1;
break;
case saah: case saaxh:
ret=uiz_getposx_simple(posvalx,posinframex)-leftmargin-rightmargin
clmp=1;
break;
case saayw:
ret=uiz_getposy_simple(posvaly,posinframey)-leftmargin-rightmargin
clmp=1;
break;
case saam:
ret=parent.width-mean(uiz_getposx_simple(posvalx,posinframex),uiz_getposy_simple(posvaly,posinframey))*2-leftmargin-rightmargin
clmp=1;
break;


case sa_px_nm: case sax_px_nm:
ret=argument0;//*2
break;
case say_px_nm:
ret=argument0;//*2
clmp=1;
break;
//sa_fc
case sa_fc_nm: case sax_fc_nm:
ret=argument0*parent.width;//*2
break;
case saxh_fc_nm:
ret=argument0*parent.width;//*2
clmp=1;
break;
case sayw_fc_nm:
ret=argument0*parent.height;//*2
break;

case say_fc_nm:
ret=argument0*parent.height;//*2
clmp=1;
break;
//sa_dp
case sa_dp_nm: case sax_dp_nm:
ret=argument0*uiz_dp;//*2
break;
case say_dp_nm:
ret=argument0*uiz_dp;//*2
clmp=1;
break;
case sayw_dp_nm:
ret=argument0*uiz_dp;//*2
break;
case saxh_dp_nm:
ret=argument0*uiz_dp;//*2
clmp=1;
break;
//saa
case saa_nm: case saax_nm: case saaw_nm:
ret=uiz_getposx_simple(posvalx,posinframex)
break;
case saay_nm:
ret=uiz_getposy_simple(posvaly,posinframey)
clmp=1;
break;
case saah_nm: case saaxh_nm:
ret=uiz_getposx_simple(posvalx,posinframex)
clmp=1;
break;
case saayw_nm:
ret=uiz_getposy_simple(posvaly,posinframey)
clmp=1;
break;
case saam_nm:
ret=mean(uiz_getposx_simple(posvalx,posinframex),uiz_getposy_simple(posvaly,posinframey))*2
clmp=1;
break;
default:
ret=argument0;
break;
}
ret-=leftmargin+rightmargin
switch(containposvx){
case uiz_nocontain:
return ret;
break;
case uiz_auto: 
if clmp=1 then{
return clamp(ret,0,parent.width);
}else{
return max(ret,0);}
break;
case uiz_parentcontain:
return clamp(ret,0,parent.width);
break;
case uiz_screencontain:
return clamp(ret,0,global.screenpxwidth);
break;
}
