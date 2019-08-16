///uiz_xml_gettree(file,path)
//converts a path form like 'doge/doritos spice="over 9000"/something else/' to a path usable by the interprenter.
//sdbm("1")
//with(obj_uiz_xmlparser){
//sdbm("2")
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
var str=argument1;

//make sure it ends with /
ret=ds_list_create()
if str="" then{return ret;}
if string_char_at(str,string_length(str))!="/" then{str+="/"}
start=1
for(var i=1;i<=string_length(str);i++){
char=string_char_at(str,i)
if char="/" then{
//make segment
if string_char_at(str,i-1)="*" then{
hasstar=1}else{hasstar=0}
//sdbm("beg:",hasstar)
//sdbm("begin:",hasstar)
tagtext=string_copy(str,start,i-start-hasstar)
start=i+1
tagname=tagtext;
tagattributes=""
for(var e=1;e<=string_length(tagtext);e++){
if string_char_at(tagtext,e)=" " then{
tagname=string_copy(tagtext,1,e-1)
tagattributes=string_copy(tagtext,e+1,string_length(tagtext)-e)
break;
}
}
//sdbm("second:",hasstar)
if tagattributes="" then{
if hasstar=1 then{
//D
pos=uiz_list_getadd(d,tagname)
ds_list_add(ret,(pos<<3)+2)
}else{
//A
//sdbm("addingA")
pos=uiz_list_getadd(d,tagname)
ds_list_add(ret,(pos<<3))
}
}else{
//sdbm(hasstar)
if hasstar=0 then{
//B
pos=uiz_list_getadd(d,tagname)
ds_list_add(ret,(pos<<3)+1)
}else{
//F
pos=uiz_list_getadd(d,tagname)
ds_list_add(ret,(pos<<3)+3)
}
//add the data



//dismantel tagattributes
var estart=1
var emid=0
//sdbm(tagattributes)
for(var e=1;e<=string_length(tagattributes);e++){
ech=string_char_at(tagattributes,e)
switch(ech){
case "=":
emid=e
break;
case '"':
if emid!=e-1 then{
//get attribute
var attributename=string_copy(tagattributes,estart,emid-estart)
var attributedata=string_copy(tagattributes,emid+2,e-emid-2)
//sdbm("AATRIBUTE:",attributename,attributedata)
//N
pos=uiz_list_getadd(d,attributename)
ds_list_add(ret,((pos<<3))+4)
//I
pos=uiz_list_getadd(d,attributedata)
ds_list_add(ret,((pos<<3))+5)
//ds_list_add(v,attributedata)
//ds_list_add(l,((ds_list_size(v)-1)<<3)+5)
estart=e+1
for(var o=e+1;o<=string_length(tagattributes);o++){
if string_char_at(tagattributes,o)!=" " then{
estart=o
break;
}
}
}
break;
}
}


}

}
}
return ret;
//}
