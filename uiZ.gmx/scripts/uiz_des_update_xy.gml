//x=max(x-global.lastmousemovedx,0)
//y=max(y-global.lastmousemovedy,0)

posvalx=max(posvalx-uiz_pxtovalx(object.posinframex,global.lastmousemovedx,object),0)
posvaly=max(posvaly-uiz_pxtovaly(object.posinframey,global.lastmousemovedy,object),0)
//write changes to ini
ini_open(ini)
ini_write_real(string(object.uiobject),"x",posvalx)
ini_write_real(string(object.uiobject),"y",posvaly)
ini_close()
//set values to valueboxes
if global.selobj=id then{
xbox.value=posvalx
ybox.value=posvaly
}
//object.x=x
//object.y=y
object.posvalx=posvalx
object.posvaly=posvaly
uiz_fixgeneralpos(object)
uiz_fixgeneralpos(id)
