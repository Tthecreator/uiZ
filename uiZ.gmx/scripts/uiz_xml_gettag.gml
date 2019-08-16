///uiz_xml_gettag(file,tagname)
//deismantel the tagname
var f=argument0;
var m=obj_uiz_xmlparser;
var l=m.filelistl[| f];
var d=m.filelistd[| f];
var v=m.filelistv[| f];
var lsz=ds_list_size(l);

var tagname=argument1
var taghasstar=0;
var tagn=""
var tagi=""
var sz=string_length(tagname)
foundtagname=0;
var tagibeg=0;
for(var i=1;i<=tagname;i++){
var chrat=string_char_at(argument1,i)
if foundtagname=1 then{
if chrat="=" then{
tagibeg=i+1;
tagn=string_copy(argument1,tagibeg,i-1-tagibeg);
}
if chrat=" " then{
//found taginfopart
var tagi=string_copy(argument1,tagibeg,i-1-tagibeg)
tagibeg=i+1;
if tagn="*" then{

}
}
}else{
if chrat=" " then{
//found tag name
foundtagname=1
if string_char_at(argument2,i-1)="*" then{
tagname=string_copy(argument2,1,i-1);taghasstar=1;}else{
tagname=string_copy(argument2,1,i-2)}
tagibeg=i+1;
}
}
}

