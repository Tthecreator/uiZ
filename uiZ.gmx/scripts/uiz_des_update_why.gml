width=max(width-global.lastmousemovedx,1)
posvalw=uiz_reverseposx(width,posvalwtype)
height=max(height+global.lastmousemovedy,1)
posvalh=uiz_reverseposy(height,posvalhtype)
//y=max(y-global.lastmousemovedy,0)
posvaly=max(posvaly-uiz_pxtovaly(object.posinframey,global.lastmousemovedy,object)*(1-max(setpointy,0)),0)
posvalx=max(posvalx-uiz_pxtovalx(object.posinframex,global.lastmousemovedx,object)*max(0,setpointx),0)
//write changes to ini
ini_open(ini)
ini_write_real(string(object.uiobject),"posvalw",posvalw)
ini_write_real(string(object.uiobject),"posvalh",posvalh)
ini_write_real(string(object.uiobject),"y",posvaly)
ini_close()
//set values to valueboxes
if global.selobj=id then{
widthbox.value=width
heightbox.value=height
ybox.value=posvaly
xbox.value=posvalx
}
object.posvalw=posvalw
object.posvalh=posvalh
object.posvaly=posvaly
object.posvalx=posvalx
uiz_fixgeneralpos(object)
uiz_fixgeneralpos(id)
