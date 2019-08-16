///uiz_xml_createfile()
var l=ds_list_create()//the main list
var d=ds_list_create()//the stucture data list
var v=ds_list_create()//the variable data list
var m=obj_uiz_xmlparser;
m.filelistl[| m.files]=l;
m.filelistd[| m.files]=d;
m.filelistv[| m.files]=v;
m.files++;
return m.files-1;
