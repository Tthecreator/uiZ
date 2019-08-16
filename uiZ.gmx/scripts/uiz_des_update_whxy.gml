width=max(width+global.lastmousemovedx,1)
posvalw=uiz_reverseposx(width,posvalwtype)
height=max(height+global.lastmousemovedy,1)
posvalh=uiz_reverseposy(height,posvalhtype)
//x=max(x-global.lastmousemovedx,0)
//y=max(y-global.lastmousemovedy,0)
//*(1-max(0,posvalx))
//sdbm(setpointx)
posvalx=max(posvalx-uiz_pxtovalx(object.posinframex,global.lastmousemovedx,object)*(1-max(setpointx,0)),0)
posvaly=max(posvaly-uiz_pxtovaly(object.posinframey,global.lastmousemovedy,object)*(1-max(setpointy,0)),0)
//write changes to ini
ini_open(ini)
ini_write_real(string(object.uiobject),"posvalw",posvalw)
ini_write_real(string(object.uiobject),"posvalh",posvalh)
ini_write_real(string(object.uiobject),"x",posvalx)
ini_write_real(string(object.uiobject),"y",posvaly)
ini_close()
//set values to valueboxes
if global.selobj=id then{
widthbox.value=posvalw
heightbox.value=posvalh
xbox.value=posvalx
ybox.value=posvaly
}
object.posvalw=posvalw
object.posvalh=posvalh
//object.x=x
//object.y=y
object.posvalx=posvalx
object.posvaly=posvaly
uiz_fixgeneralpos(object)
uiz_fixgeneralpos(id)
