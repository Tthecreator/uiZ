/*
ini_open(obj_uiz_designer.ini)
ini_write_string(string(object.uiobject),"l",uiz_xml_stringl(global.xml))
ini_write_string(string(object.uiobject),"d",uiz_xml_stringd(global.xml))
ini_write_string(string(object.uiobject),"v",uiz_xml_stringv(global.xml))
ini_close()
*/
ini_open(obj_uiz_designer.ini)
if !ini_key_exists(string(object.uiobject),"file") then{
ini_write_string(string(object.uiobject),"file",string(obj_uiz_designer.ini)+"_"+string(date_current_datetime())+"_"+string(irandom(9999)))
}
sdbm("[uiZ,Designer:INFO]Saving frameset at: ",game_save_id+"uiz_savefiles\"+ini_read_string(string(object.uiobject),"file",""))
uiz_xml_savefile(uxml,game_save_id+"uiz_savefiles\"+ini_read_string(string(object.uiobject),"file",""))

ini_close()
