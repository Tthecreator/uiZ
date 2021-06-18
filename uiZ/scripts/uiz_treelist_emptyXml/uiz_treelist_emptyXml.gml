/// @description uiz_treelist_emptyXml(instanceid)
/// @param treelist The instanceID of a treelist object
function uiz_treelist_emptyXml(instanceid){
	uiz_treelist_setxml(instanceid, uiz_xml_createfile());
}