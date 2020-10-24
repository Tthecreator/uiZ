/// @description uiz_xml_stringl(file)
/// @param file
function uiz_xml_stringl(argument0) {
	var m=obj_uiz_xmlparser;
	var l=m.filelistl[| argument0];
	return ds_list_write(l);



}
