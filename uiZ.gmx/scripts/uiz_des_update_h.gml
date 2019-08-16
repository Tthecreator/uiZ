height=max(height-global.lastmousemovedy,1)
posvalh=uiz_reverseposy(height,posvalhtype)

//write changes to ini
ini_open(ini)
ini_write_real(string(object.uiobject),"posvalh",posvalh)
ini_close()
//set values to valueboxes
if global.selobj=id then{
heightbox.value=posvalh
}
object.posvalh=posvalh
uiz_fixgeneralpos(object)
uiz_fixgeneralpos(id)
