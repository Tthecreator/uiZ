///uiz_des_framewindow_makenames()
var m=obj_uiz_xmlparser;
var l=m.filelistl[| uxml];
var d=m.filelistd[| uxml];
var v=m.filelistv[| uxml];
var lsz=ds_list_size(l)
for(var i=0;i<lsz;i++){
var lv=round(uiz_positify(l[| i])>>3);
var lt=(uiz_positify(l[| i]) mod 8);
if lt<=3 then{
var name=uiz_xml_gettag_name_at(uxml,i)
var hasname=uiz_xml_gettaginfo_at(uxml,i,"hasname","1")
var size=uiz_xml_gettaginfo_at(uxml,i,"size","1")
var sizetype=uiz_xml_gettaginfo_at(uxml,i,"sizetype",px)
//sdbm("lt:",lt)
if lt=0 or lt=1 then{
uiz_xml_settaginfo_at(uxml,i,"name",string(name)+": "+string(size)+" "+uiz_des_getconststring(real(sizetype)))
}else{
uiz_xml_settaginfo_at(uxml,i,"name",string(hasname)+"-"+"frame: "+string(size)+" "+uiz_des_getconststring(real(sizetype)))
}

}
}
