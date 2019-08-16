width=max(width+global.lastmousemovedx,1)
posvalw=uiz_reverseposx(width,posvalwtype)

//write changes to ini
ini_open(ini)
ini_write_real(string(object.uiobject),"posvalw",posvalw)
ini_close()
//set values to valueboxes
if global.selobj=id then{
widthbox.value=posvalw
}

object.posvalw=posvalw
uiz_fixgeneralpos(object)
uiz_fixgeneralpos(id)
