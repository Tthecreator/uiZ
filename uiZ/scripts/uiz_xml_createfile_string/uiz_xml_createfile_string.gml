/// @description uiz_xml_createfile(stringl,stringd,stringv)
/// @param stringl
/// @param stringd
/// @param stringv
function uiz_xml_createfile_string(argument0, argument1, argument2) {
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




}
