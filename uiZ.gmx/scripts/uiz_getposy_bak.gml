///uiz_getposy(value,valuetype[px dp fc or sa_])
var ret=0
switch(argument1){
case px:
ret=argument0;
break;
case pxmin:
ret=parent.height-argument0;
break;
case dp:
ret=argument0*display_get_dpi_y()
break;
case dpmin:
ret=parent.height-argument0*display_get_dpi_y()
break;
case fc: case fcy:
ret=round(argument0*parent.height)
break;
case fcx:
ret=round(min(argument0*parent.width,parent.height))
break;
case fcm:
ret=round(min(mean(argument0*parent.width,argument0*parent.height),parent.height))
break;
//sa_px
case sax_px:
//show_debug_message("dointg sax_px @"+string(id))
//ret=parent.width-argument0*2
ret=clamp(parent.width-argument0*2,0,parent.height)
break;
case sa_px: case say_px:
ret=parent.height-argument0*2
break;
//sa_fc
case saxh_fc:
ret=clamp(parent.height-argument0*parent.width*2,0,parent.height)
break;
case sayw_fc:
ret=clamp(parent.width-argument0*parent.height*2,0,parent.height)
break;
case sax_fc:
ret=clamp(parent.width-argument0*parent.width*2,0,parent.height)
break;
case sa_fc: case say_fc:
ret=parent.height-argument0*parent.height*2
break;
//sa_dp
case sax_dp:
ret=clamp(parent.width-argument0*display_get_dpi_x()*2,0,parent.height)
break;
case sa_dp: case say_dp:
ret=parent.height-argument0*display_get_dpi_y()*2
break;
case sayw_dp:
ret=clamp(parent.width-argument0*display_get_dpi_y()*2,0,parent.height)
break;
case saxh_dp:
ret=clamp(parent.height-argument0*display_get_dpi_x()*2,0,parent.height)
break;
//saa
case saa: case saay: case saah:
ret=parent.height-uiz_getposy_simple(posvaly,posinframey)
break;
case saaw: case saayw:
ret=clamp(parent.width-uiz_getposy_simple(posvaly,posinframey),0,parent.height)
break;
case saax:
ret=clamp(parent.width-uiz_getposy_simple(posvalx,posinframex),0,parent.height)
break;
case saaxh:
ret=clamp(parent.height-uiz_getposx_simple(posvalx,posinframex),0,parent.height)
break;
case saam:
ret=clamp(parent.height-mean(uiz_getposx_simple(posvalx,posinframex),uiz_getposy_simple(posvaly,posinframey))*2,0,parent.height)
break;
default:
ret=argument0;
break;
}
switch(containposvy){
case uiz_auto: case uiz_nocontain:
return ret;
break;
case uiz_parentcontain:
return min(ret,parent.height);
break;
case uiz_screencontain:
return min(ret,global.screenpxheight);
break;
}

