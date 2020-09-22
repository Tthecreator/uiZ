/// @description uiz_xml_getTagType(xml, handle)
/// @param xml
/// @param  handle
function uiz_xml_getTagType(argument0, argument1) {
	var m=obj_uiz_xmlparser.id;
	var l=m.filelistl[| argument0];
	return uiz_positify(l[| argument1]) mod 8;



}
