///uiz_xml_makelistfromattributes_at(file,at,attribute)
//checks all the tags for a certain attribute
//will return a ds list.
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var list=ds_list_create()
var h=argument1;
var seh=uiz_xml_gethandleshortend(argument0,h)
var eh=uiz_xml_gethandleend(argument0,h)
//get what to find
fn=ds_list_find_index(d,argument2)
//sdbm("a",seh,eh)
var isin=false;
var lastwastrue=false;
for(var i=seh;i<eh;i++){
lv=round(uiz_positify(l[| i])>>3);
lt=uiz_positify(l[| i]) mod 8;
if !(lt=3 or lt=4 or lt=5) then{isin=false}
if lt=3 then{
isin=true;
}
if lastwastrue=true then{
if lt=5 then{
ds_list_add(list,v[| lv])
}else{lastwastrue=false}
}
if isin=true and lt=4 and lv=fn then{
lastwastrue=true
}else{lastwastrue=false}
}
return list;

