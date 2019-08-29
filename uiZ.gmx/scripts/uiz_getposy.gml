///uiz_getposy(value,valuetype[px dp fc or sa_])
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
ret=round(argument0*(parent.iheight));
break;
case fcx:
ret=round(argument0*(parent.iwidth))
clmp=1;
break;
case fcm:
ret=round(mean(argument0*(parent.iwidth),argument0*(parent.iheight)))
clmp=1;
break;

case fcmin:
if parent.iwidth>parent.iheight then{
ret=round(argument0*(parent.iheight))
}else{
ret=round(argument0*(parent.iwidth));
}
break;
case fcmax:
if parent.iwidth<parent.iheight then{
ret=round(argument0*(parent.iheight))
}else{
ret=round(argument0*(parent.iwidth));
}
break;

//sa_px
case sax_px:
//show_debug_message("dointg sax_px @"+string(id))
//ret=parent.width-argument0*2
ret=parent.width-argument0*2
clmp=1;
break;
case sa_px: case say_px:
ret=parent.height-argument0*2
break;
//sa_fc
case saxh_fc:
ret=parent.height-argument0*(parent.iwidth)*2
clmp=1;
break;
case sayw_fc:
ret=parent.width-argument0*(parent.iheight)*2
clmp=1;
break;
case sax_fc:
ret=parent.width-argument0*(parent.iwidth)*2
clmp=1;
break;
case sa_fc: case say_fc:
ret=parent.height-argument0*(parent.iheight)*2
break;
//sa_dp
case sax_dp:
ret=parent.width-argument0*uiz_dp*2
clmp=1;
break;
case sa_dp: case say_dp:
ret=parent.height-argument0*uiz_dp*2
break;
case sayw_dp:
ret=parent.width-argument0*uiz_dp*2
clmp=1;
break;
case saxh_dp:
ret=parent.height-argument0*uiz_dp*2
clmp=1;
break;
//saa
case saa: case saay: case saah:
ret=parent.height-uiz_getposy_simple(posvaly,posinframey)
break;
case saaw: case saayw:
ret=parent.width-uiz_getposy_simple(posvaly,posinframey)
clmp=1;
break;
case saax:
ret=parent.width-uiz_getposy_simple(posvalx,posinframex)
clmp=1;
break;
case saaxh:
ret=parent.height-uiz_getposx_simple(posvalx,posinframex)
clmp=1;
break;
case saam:
ret=parent.height-mean(uiz_getposx_simple(posvalx,posinframex),uiz_getposy_simple(posvaly,posinframey))*2
clmp=1;
break;
default:
ret=argument0;
break;





















case sax_px_nm:
//show_debug_message("dointg sax_px @"+string(id))
//ret=parent.width-argument0*2
ret=argument0*2
clmp=1;
break;
case sa_px_nm: case say_px_nm:
ret=argument0*2
break;
//sa_fc
case saxh_fc_nm:
ret=argument0*parent.width//*2
clmp=1;
break;
case sayw_fc_nm:
ret=argument0*parent.height//*2
clmp=1;
break;
case sax_fc_nm:
ret=argument0*parent.width//*2
clmp=1;
break;
case sa_fc_nm: case say_fc_nm:
ret=argument0*parent.height//*2
break;
//sa_dp
case sax_dp_nm:
ret=argument0*uiz_dp//*2
clmp=1;
break;
case sa_dp_nm: case say_dp_nm:
ret=argument0*uiz_dp//*2
break;
case sayw_dp_nm:
ret=argument0*uiz_dp//*2
clmp=1;
break;
case saxh_dp_nm:
ret=argument0*uiz_dp//*2
clmp=1;
break;
//saa
case saa_nm: case saay_nm: case saah_nm:
ret=uiz_getposy_simple(posvalh,posvalhtype)
break;
case saaw_nm: case saayw_nm:
ret=uiz_getposx_simple(posvalh,posvalhtype)
clmp=1;
break;
case saax_nm:
ret=uiz_getposx_simple(posvalw,posvalwtype)
//sdbm("RETRUNING",ret,posvalx,posinframex)
clmp=1;
break;
case saaxh_nm:
ret=uiz_getposy_simple(posvalw,posvalwtype)
clmp=1;
break;
case saam_nm:
ret=mean(uiz_getposx_simple(posvalw,posvalwtype),uiz_getposy_simple(posvalh,posvalhtype))*2
clmp=1;
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

