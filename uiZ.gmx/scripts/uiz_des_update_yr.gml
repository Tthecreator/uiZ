height=max(height-global.lastmousemovedy,1)
posvalh=uiz_reverseposy(height,posvalhtype)
//y=max(y-global.lastmousemovedy,0)
posvaly=max(posvaly-uiz_pxtovaly(object.posinframey,global.lastmousemovedy,object),0)
//write changes to ini
ini_open(ini)
ini_write_real(string(object.uiobject),"posvalh",posvalh)
ini_write_real(string(object.uiobject),"y",posvaly)
ini_close()
//set values to valueboxes
if global.selobj=id then{
heightbox.value=posvalh
ybox.value=posvaly
}
object.posvalh=posvalh
object.posvaly=posvaly
uiz_fixgeneralpos(object)
uiz_fixgeneralpos(id)
