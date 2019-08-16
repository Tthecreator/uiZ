///uiz_xml_structtotag_at(file,at)
//data whithin a tag will get lost
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
lv=round(uiz_positify(l[| argument1])>>3);
lt=uiz_positify(l[| argument1]) mod 8;
//var nlt;
switch(lt){
case 0:
//H
var seh=uiz_xml_gethandleshortend(argument0,argument1);
if l[| argument1]<0 then{
l[| argument1]=-1-((lv<<3)+2)
}else{
l[| argument1]=(lv<<3)+2}
ds_list_insert(l,seh,(ds_list_size(v)<<3)+5)
ds_list_add(v,"")
var eh=uiz_xml_gethandleend(argument0,argument1);
lv2=round(uiz_positify(l[| eh])>>3);
lt2=uiz_positify(l[| eh]) mod 8;
if lt2=7 and lv2=lv then{
ds_list_delete(l,eh)
}
//l[| argument1+1]=(lv<<3)+7;
break;
case 1:
//k
var eh=uiz_xml_gethandleend(argument0,argument1)
if eh<ds_list_size(l) and eh>-1 then{
lv2=round(uiz_positify(l[| eh])>>3);
lt2=uiz_positify(l[| eh]) mod 8;
if lt2=7 and lv2=lv then{
ds_list_delete(l,eh)
}
if l[| argument1]<0 then{
l[| argument1]=-1-((lv<<3)+3)
}else{
l[| argument1]=(lv<<3)+3}
var seh=uiz_xml_gethandleshortend(argument0,argument1);
ds_list_insert(l,seh,(ds_list_size(v)<<3)+5)
ds_list_add(v,"")
//sdbm("adding v to list insert",seh,((ds_list_size(v)-1)<<3)+5,(ds_list_size(v)-1))

//sdbm("eh",eh,ds_list_size(l))
//if eh<ds_list_size(l) and eh>-1 then{

}
break;
//default: nlt=lt break;
}
