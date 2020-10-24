/// @description uiz_xml_gethandle_end(file)
/// @param file
function uiz_xml_gethandle_end(argument0) {
	//gets an handle at the end of the xml file
	var file = argument0;
	return ds_list_size(obj_uiz_xmlparser.filelistl[|file]);



}
