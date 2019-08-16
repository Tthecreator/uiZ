///uiz_xml_readtag(file,tree)
var h=uiz_xml_gethandle(argument0,argument1)
//sdbm(h)
if h>-1 then{
var m=obj_uiz_xmlparser;
var l=m.filelistl[| argument0];
var d=m.filelistd[| argument0];
var v=m.filelistv[| argument0];
//read what is at h
lv=round(uiz_positify(l[| h])>>3);
lt=uiz_positify(l[| h]) mod 8;
switch(lt){
case 2:
//T
//sdbm(h+1,ds_list_size(l),l[| h+1],ds_list_size(v))
if h+1<ds_list_size(l) and round(uiz_positify(l[| h+1])>>3)<ds_list_size(v) then{return v[| round(uiz_positify(l[| h+1])>>3)]}else{return "";}
break;
default:
//noting found
return "";
break;
}
}
return "";
