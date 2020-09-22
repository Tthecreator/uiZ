/// @description uiz_xml_stringv(file)
/// @param file
function uiz_xml_stringv(argument0) {
	var m=obj_uiz_xmlparser;
	var v=m.filelistv[| argument0];
	return ds_list_write(v);



}
