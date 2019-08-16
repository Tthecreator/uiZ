#define uiz_des_framesetload
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ///uiz_des_framesetload()
//load xml file
ini_open(obj_uiz_designer.ini)
var f=ini_read_string(string(object.uiobject),"file","");
if f="" then{
f=string(obj_uiz_designer.ini)+"_"+string(date_current_datetime())+"_"+string(irandom(9999));
ini_write_string(string(object.uiobject),"file",f)
}
f="uiz_savefiles\"+f
if !file_exists(f) then{
file_text_close(file_text_open_write(f))
}
uxml=uiz_xml_loadfile(f)
//get items in main dir
//uxmltree=uiz_xml_gettree(uxml,"")
uiz_des_framesetload_part(0)

ini_close()

#define uiz_des_framesetload_part
///uiz_des_framesetload_part(at)
var uitems=uiz_xml_gettagsin_at(uxml,argument0)
var uname=uiz_xml_gettag_name_at(uxml,argument0)

var doto=uiz_des_framewindow_findframefromxml(object,uxml,argument0)
//sdbm("uname",uname,doto,uitems)
if uname="horizontal" then{
var uk=uiz_framedivisionhorizontal_part_beg(doto)
}else{
var uk=uiz_framedivisionvertical_part_beg(doto)
}

if uitems=0 then{
uiz_framedivision_part_mid(uk,doto,1,xtra)
}else{
for(var i=1;i<=uitems;i++){
var uh=uiz_xml_gettagin_number_at(uxml,argument0,i)

var usize=real(uiz_xml_gettaginfo_at(uxml,uh,"size",1))
var usizetype=real(uiz_xml_gettaginfo_at(uxml,uh,"sizetype",xtra))
//sdbm("uh",uh,usize,usizetype)
uiz_framedivision_part_mid(uk,doto,usize,usizetype)
}}
if uname="horizontal" then{
uiz_framedivisionhorizontal_part_end(uk,doto)
}else{
uiz_framedivisionvertical_part_end(uk,doto)
}
for(var i=1;i<=uitems;i++){
var uh=uiz_xml_gettagin_number_at(uxml,argument0,i)
if uiz_xml_istag_at(uxml,uh)=false then{uiz_des_framesetload_part(uh)}
}