///uiz_xml_loadfile_addto(opened file,string filepath)
var foundtags,len,tagtext,pos,line,fileline,startpos,cha,i,tagtext,len,tagname,tagattributes,e,removedline,found,estart,emid,pos,o,ech;

//with(obj_uiz_xmlparser){

var f=file_text_open_read(argument1);
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
line=file_text_readln(f);
while(string_char_at(line,1)=" "){
line=string_copy(line,2,string_length(line)-1)
}

//find tags
var startpos=0
for(var i=1;i<=string_length(line);i++){
cha=string_char_at(line,i)
switch(cha){
case "<":
startpos=i
break;
case ">":
if startpos>0 then{
len=string_length(line)
tagtext="";
//find the text between <>
//for(var e=1;e<=len;e++){
//if string_char_at(line,e)=">" then{
//tagtext=string_copy(line,2,e-2)
//break;
//}}
tagtext=string_copy(line,startpos+1,i-startpos-1)
//sdbm(tagtext)
//find tagname
len=string_length(line)
tagname=tagtext;
tagattributes=""
for(var e=1;e<=i;e++){
if string_char_at(tagtext,e)=" " then{
tagname=string_copy(tagtext,1,e-1)
tagattributes=string_copy(tagtext,e+1,string_length(tagtext)-e)
break;
}}
//sdbm(tagtext,tagname,tagattributes)
//sdbm(tagattributes)
//sdbm("line: "+line)
removedline=string_copy(line,1,startpos-1)
line=string_copy(line,i+1,string_length(line)-i)
//sdbm("REMLINE:",line)

if string_char_at(tagname,1)="/" then{
//is endtag
//sdbm("lineendtag: "+tagname,tagattributes)
tagname=string_copy(tagname,2,string_length(tagname)-1)
if !ds_list_empty(l) then{
pos=uiz_list_getadd(d,tagname)
//detect objecttag
var found=0
for(var e=ds_list_size(l)-1;e>=0;e--){
var p=(l[| e] mod 8)
if p!=4 and p!=5 then{
//transfer headtag to objecttag
if p<2 and round(l[| e]>>3)=pos then{
l[| e]+=2
found=1
}
break;
}
}
//sdbm("found",found)
if found=0 then{
//normal endtag
//E
//sdbm("adding +7",(pos<<3)+7)
ds_list_add(l,(pos<<3)+7)
}else{
//find and add text between object tags
//I
ds_list_add(v,removedline)
ds_list_add(l,((ds_list_size(v)-1)<<3)+5)
}
}
}else{
pos=uiz_list_getadd(d,tagname)
if string_copy(tagname,1,3)="!--" then{
//comment
}else{
var addtoend=-1;
if string_char_at(tagtext,string_length(tagtext))="/" then{
addtoend=(pos<<3)+7;
}

if tagattributes="" then{
//H
//pos=uiz_list_getadd(d,tagname)
ds_list_add(l,pos<<3)
}else{
//K
//sdbm(tagname)
//pos=uiz_list_getadd(d,tagname)
ds_list_add(l,(pos<<3)+1)
//sdbm("1",tagname,(pos<<3)+1)
//dismantel tagattributes
var estart=1
var emid=0
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
ds_list_add(l,(pos<<3)+4)
//I
ds_list_add(v,attributedata)
ds_list_add(l,((ds_list_size(v)-1)<<3)+5)
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
if addtoend>-1 then{
//sdbm("2",tagname,addtoend)
ds_list_add(l,addtoend)
}

}
}
i=1;
startpos=0
}
break;
}

if i>=string_length(line) and !file_text_eof(f) then{
i=0
//startpos=0
line=line+file_text_readln(f);
//sdbm("NEWLINE:",line)
}

}

file_text_close(f)

//}
return m.files-1;
