///uiz_getposx(value,valuetype[px dp fc or sa_])
var ret=0
switch(argument1){
case px:
ret=argument0;
break;
case pxmin:
ret=parent.width-argument0;
break;
case dp:
ret=argument0*display_get_dpi_x()
break;
case dpmin:
ret=parent.width-argument0*display_get_dpi_x()
break;
case fc: case fcx:
ret=round(argument0*parent.width);
break;
case fcy:
ret=round(min(argument0*parent.height,parent.width))
break;
case fcm:
ret=round(clamp(mean(argument0*parent.width,argument0*parent.height),0,parent.width))
break;
//sa_px
case sa_px: case sax_px:
ret=parent.width-argument0*2
break;
case say_px:
ret=clamp(parent.height-argument0*2,0,parent.width)
break;
//sa_fc
case sa_fc: case sax_fc:
ret=parent.width-argument0*parent.width*2
break;
case saxh_fc:
ret=clamp(parent.height-argument0*parent.width*2,0,parent.width)
break;
case sayw_fc:
ret=parent.width-argument0*parent.height*2
break;

case say_fc:
ret=clamp(parent.height-argument0*parent.height*2,0,parent.width)
break;
//sa_dp
case sa_dp: case sax_dp:
ret=parent.width-argument0*display_get_dpi_x()*2
break;
case say_dp:
ret=clamp(parent.height-argument0*display_get_dpi_y()*2,0,parent.width)
break;
case sayw_dp:
ret=parent.width-argument0*display_get_dpi_y()*2
break;
case saxh_dp:
ret=clamp(parent.height-argument0*display_get_dpi_x()*2,0,parent.width)
break;
//saa
case saa: case saax: case saaw:
ret=parent.width-uiz_getposx_simple(posvalx,posinframex)
break;
case saay:
ret=clamp(parent.height-uiz_getposy_simple(posvaly,posinframey),0,parent.width)
break;
case saah: case saaxh:
ret=clamp(parent.height-uiz_getposx_simple(posvalx,posinframex),0,parent.width)
break;
case saayw:
ret=clamp(parent.width-uiz_getposy_simple(posvaly,posinframey),0,parent.width)
break;
case saam:
ret=clamp(parent.width-mean(uiz_getposx_simple(posvalx,posinframex),uiz_getposy_simple(posvaly,posinframey))*2,0,parent.width)
break;
default:
ret=argument0;
break;
}
switch(containposvx){
case uiz_auto: case uiz_nocontain:
return ret;
break;
case uiz_parentcontain:
return min(ret,parent.width);
break;
case uiz_screencontain:
return min(ret,global.screenpxwidth);
break;
}
