switch(uiz_sliderstruct_docheck(sliderstruct)){
case -1:

break;
case 0:
//left frame
var fr=uiz_sliderstruct_getnewframe(sliderstruct)
frameobject=uiz_c(obj_uiZ_rotator)
uiz_setParent(frameobject,fr)
frameobject.posinframex=uiz_fill;
frameobject.posinframey=uiz_fill;
uiz_fixgeneralpos(frameobject)
break;
case 1:
//middle frame
var fr=uiz_sliderstruct_getnewframe(sliderstruct)
frameobject=uiz_c(obj_uiZ_loadingcircle)
uiz_setParent(frameobject,fr)
frameobject.posinframex=uiz_fill;
frameobject.posinframey=uiz_fill;
uiz_fixgeneralpos(frameobject)
break;
case 2:
//right frame
var fr=uiz_sliderstruct_getnewframe(sliderstruct)
frameobject=uiz_c(obj_uiZ_sprbutton)
uiz_setParent(frameobject,fr)
frameobject.posinframex=uiz_fill;
frameobject.posinframey=uiz_fill;
uiz_fixgeneralpos(frameobject)
break;
}


