width=max(width+global.lastmousemovedx,1)
posvalw=uiz_reverseposx(width,posvalwtype)
height=max(height-global.lastmousemovedy,1)
posvalh=uiz_reverseposy(height,posvalhtype)
//x=max(x-global.lastmousemovedx,0)
posvalx=max(posvalx-uiz_pxtovalx(object.posinframex,global.lastmousemovedx,object)*(1-max(setpointx,0)),0)
posvaly=max(posvaly-uiz_pxtovaly(object.posinframey,global.lastmousemovedy,object)*max(0,setpointy),0)

//write changes to ini
ini_open(ini)
ini_write_real(string(object.uiobject),"posvalw",posvalw)
ini_write_real(string(object.uiobject),"posvalh",posvalh)
ini_write_real(string(object.uiobject),"x",posvalx)
ini_close()
//set values to valueboxes
if global.selobj=id then{
//uiz_des_updatevalbox("width",width)
//uiz_des_updatevalbox("height",height)
widthbox.value=posvalw
heightbox.value=posvalh
xbox.value=posvalx
ybox.value=posvaly
}
object.posvalx=posvalx
object.posvalh=posvalh
object.posvalw=posvalw
object.posvaly=posvaly
uiz_fixgeneralpos(object)
uiz_fixgeneralpos(id)
