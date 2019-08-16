///uiz_xml_loadfile(string filepath)
var foundtags,len,tagtext,pos,line,fileline;
//sdbm("running")
with(obj_uiz_xmlparser){
//files++;
//ds_list_add(readfiles,file_text_open_read(argument0))
//ds_list_add(writefiles,file_text_open_read(argument0))
var f=file_text_open_read(argument0);
l=ds_list_create()//the main list
//var v=ds_list_create()//the variable list holding the changable things
d=ds_list_create()//the stucture data list
//read lines
//currentline=0
//while(!file_text_eof(f)){
//currentline++;
fileline=file_text_readln(f);

//remove spaces at the beginning.
while(string_char_at(fileline,1)=" "){
fileline=string_copy(fileline,2,string_length(fileline)-1)
}
//check if line is allright and not cut-off or multpile tags on one line
var startpos=-1;
var foundinfo=0
var infostring="";
var intag=1
for(var i=1;i<=string_length(fileline);i++){
cha=string_char_at(fileline,i)
switch(cha){
case "<":
if startpos>0 and !ds_list_empty(l) then{
//the line is information
line=string_copy(fileline,startpos,i-startpos)
foundinfo=1
infostring=line
//sdbm(fileline,line)
}
startpos=i;
break;
case ">":
//the line is a tag
if startpos>0 then{
line=string_copy(fileline,startpos,i-startpos+1)
//sdbm(line)
len=string_length(line)
tagtext="";
//find the text between <>
for(var i=1;i<=len;i++){
if string_char_at(line,i)=">" then{
tagtext=string_copy(line,2,i-2)
break;
}
}
if foundinfo=1 and !ds_list_empty(l) and tagtext=d[| l[| ds_list_size(l)-1]] then{
//information is confirmed
//ds_list_add(l,uiz_list_getadd(d,tagtext)<<2)
l[| ds_list_size(l)-1]=l[| ds_list_size(l)-1]-1
ds_list_add(d,infostring)
ds_list_add(l,(ds_list_size(d)-1)<<2+3)
foundinfo=0
fileline=string_copy(fileline,i+1,string_length(fileline)-i)
startpos=0;
i=1;
//sdbm(fileline)
}else{



if string_char_at(line,1)="/" then{
//tag is a endtag
tagtext=string_copy(tagtext,2,string_length(tagtext)-1)
//sdbm("/",tagtext)
ds_list_add(l,uiz_list_getadd(d,tagtext)<<2+2)
fileline=string_copy(fileline,i+1,string_length(fileline)-i)
startpos=0;
i=1;
//sdbm(fileline)
}else{
if string_copy(line,1,3)="!--" then{
//tag is a comment
tagtext=string_copy(tagtext,3,string_length(tagtext)-3)
//sdbm("!",tagtext)
}else{
//tag is a normal tag.
//sdbm(tagtext)
ds_list_add(l,uiz_list_getadd(d,tagtext)<<2+1)
pos=uiz_list_getadd(d,tagtext)
ds_list_add(l,pos<<2)
fileline=string_copy(fileline,i+1,string_length(fileline)-i)
startpos=0;
i=1;
//sdbm(fileline)
}}



}
foundinfo=0
}
startpos=i+1
break;
}
if i=string_length(fileline) and !file_text_eof(f) then{
//get new line
fileline=fileline+file_text_readln(f);
}



}



//sdbm(tagtext)



/*
//check tag
if string_char_at(line,1)="<" then{
//if it is a tag

//detect the tag type.
//ds_list_add(l,)
if string_char_at(line,1)="/" then{
//tag is a endtag
tagtext=string_copy(tagtext,2,string_length(tagtext)-1)
sdbm("/",tagtext)
}else{
if string_copy(line,1,3)="!--" then{
//tag is a comment
tagtext=string_copy(tagtext,3,string_length(tagtext)-3)
sdbm("!",tagtext)
}else{
//tag is a normal tag.
sdbm(tagtext)

pos=uiz_list_getadd(d,tagtext)
ds_list_add(l,pos<<2)
}}
}else{
//if it isn't a tag.
}
*/
//}
file_text_close(f)
//for now, destroy the lists
//ds_list_destroy(l)
//ds_list_destroy(d)
}

