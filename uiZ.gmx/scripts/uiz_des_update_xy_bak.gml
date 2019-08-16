x=max(x-global.lastmousemovedx,0)
y=max(y-global.lastmousemovedy,0)
//write changes to ini
ini_open(ini)
ini_write_real(string(object.uiobject),"x",x)
ini_write_real(string(object.uiobject),"y",y)
ini_close()
//set values to valueboxes
if global.selobj=id then{
xbox.value=x
ybox.value=y
}
//object.x=x
//object.y=y
object.posvalx=x
object.posvaly=y
uiz_fixgeneralpos(object)
uiz_fixgeneralpos(id)
