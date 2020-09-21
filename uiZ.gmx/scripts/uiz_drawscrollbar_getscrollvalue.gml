///uiz_drawscrollbar_getscrollvalue(scroll)
//whould work like this:
//scroll=uiz_drawscrollbar_vertical(rlx-scrollbarwidth,ry,rlx,rly,scrollbarsprite,scrollbarcolor,scrollbarbacktexmode,scroll,scrolllines)
//scrollat=uiz_drawscrollbar_getscrollvalue(scroll);
//you need to use the value you got from scroll
return round(argument0[@uiz_drawscrollbar_struct.uiz_dsb_scroll]);
//return floor(uiz_positify(argument0));

