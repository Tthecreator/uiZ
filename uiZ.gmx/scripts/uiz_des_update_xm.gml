width=max(width+global.lastmousemovedx,1)
posvalw=uiz_reverseposx(width,posvalwtype)
//x=max(x-global.lastmousemovedx,0)
posvalx=max(posvalx-uiz_pxtovalx(object.posinframex,global.lastmousemovedx,object)/2,0)
//write changes to ini
ini_open(ini)
ini_write_real(string(object.uiobject),"posvalw",posvalw)
ini_write_real(string(object.uiobject),"x",posvalx)
ini_close()
//set values to valueboxes
if global.selobj=id then{
widthbox.value=posvalw
xbox.value=posvalx
}
object.posvalw=posvalw
object.posvalx=posvalx
uiz_fixgeneralpos(object)
uiz_fixgeneralpos(id)
