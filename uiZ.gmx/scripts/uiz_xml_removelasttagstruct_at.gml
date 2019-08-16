///uiz_xml_removelasttagstruct_at(file,at)
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var h=argument1;
var seh=uiz_xml_gethandleshortend(argument0,h)
var eh=uiz_xml_gethandleend(argument0,h)
for(var i=eh;i>=seh;i--){
lv=round(uiz_positify(l[| i])>>3);
lt=uiz_positify(l[| i]) mod 8;
//if lt=2 or lt=3 then{
if lt<=3 then{
//remove tag
//sdbm("removing tag",eh-i,i,eh)
repeat(eh-i){
ds_list_delete(l,i)
}
break;
}
}
