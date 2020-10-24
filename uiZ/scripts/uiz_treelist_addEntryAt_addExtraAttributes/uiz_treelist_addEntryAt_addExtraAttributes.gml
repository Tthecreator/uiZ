/// @description uiz_treelist_addEntryAt_addExtraAttributes(xmlHandle,nameList,dataList)
/// @param xmlHandle
/// @param nameList
/// @param dataList
function uiz_treelist_addEntryAt_addExtraAttributes(argument0, argument1, argument2) {
	//write extra attributes to xml
	for(var i=0;i<ds_list_size(argument1);++i){
	    uiz_xml_settaginfo_at(usexml,argument0,argument1[|i],argument2[|i])
	} 



}
