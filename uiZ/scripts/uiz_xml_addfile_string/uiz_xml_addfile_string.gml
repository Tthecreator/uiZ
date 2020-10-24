/// @description uiz_xml_addfile_string(file,stringl,stringd,stringv)
/// @param file
/// @param stringl
/// @param stringd
/// @param stringv
function uiz_xml_addfile_string(argument0, argument1, argument2, argument3) {
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	var d=m.filelistd[| argument0];
	var v=m.filelistv[| argument0];

	ds_list_read(l,argument1)
	ds_list_read(d,argument2)
	ds_list_read(v,argument3)




}
