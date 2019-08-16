///uiz_xml_createfile(stringl,stringd,stringv)
var l=ds_list_create()//the main list
var d=ds_list_create()//the stucture data list
var v=ds_list_create()//the variable data list
var m=obj_uiz_xmlparser;
m.filelistl[| m.files]=l;
m.filelistd[| m.files]=d;
m.filelistv[| m.files]=v;
m.files++;
ds_list_read(l,argument0)
ds_list_read(d,argument1)
ds_list_read(v,argument2)

