/// @description uiz_xml_stringd(file)
/// @param file
function uiz_xml_stringd(argument0) {
	var m=obj_uiz_xmlparser;
	var d=m.filelistd[| argument0];
	return ds_list_write(d);



}
