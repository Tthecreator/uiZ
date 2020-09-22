/// @description uiz_xml_attribute_getName(file,attributeHandle)
/// @param file
/// @param attributeHandle
function uiz_xml_attribute_getName(argument0, argument1) {
	//if you have an handle that points to an attribute, this can be used to get the name of the attribute
	//<example test="something"> would have the attribute name "test"
	return uiz_xml_gettag_name_at(argument0,argument1);



}
