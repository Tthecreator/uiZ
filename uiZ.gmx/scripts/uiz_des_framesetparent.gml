sdbm("[uiZ,Designer:INFO]framesetparentload")
var wv=argument0
var t=obj_uiz_designer.afobjlist[| wv];
ini_open(obj_uiz_designer.ini)
if ini_key_exists(string(object.uiobject),"parentinframe") then{
var fr=ini_read_string(string(object.uiobject),"parentinframe","")
if t.omgxml=-1 then{
var f=ini_read_string(string(t.object.uiobject),"file","");
if f="" then{
f=string(obj_uiz_designer.ini)+"_"+string(date_current_datetime())+"_"+string(irandom(9999));
ini_write_string(string(t.object.uiobject),"file",f)
}
f="uiz_savefiles\"+f
if !file_exists(f) then{
file_text_close(file_text_open_write(f))
}
t.omgxml=uiz_xml_loadfile(f)
}
var data=uiz_xml_somethinghasdata(t.omgxml,"basename",fr);
if data>-1 then{
var setframe=uiz_des_framewindow_findframefromxml(t.object,t.omgxml,data)
sdbm("[uiZ,Designer:INFO]framesetparentload, setframe to",setframe)
if instance_exists(setframe) then{
uiz_setparent(object,setframe)}
}else{
sdbm("[uiZ,Designer:WARNING] Problem setting frameset as parent, basename '"+string(fr)+"' is not found!")
}
}
ini_close();
