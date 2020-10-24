/// @description  uiz_treelist_removeEntry_removeFromLists(handle)
/// @param handle
///uiz_treelist_removeEntry_removeFromLists(handle)
function uiz_treelist_removeEntry_removeFromLists(argument0) {
	var handle = argument0;
	ds_list_delete(indentEnabledAndBoxList,handle);
	ds_list_delete(spriteList,handle);
	ds_list_delete(textList,handle);
	ds_list_delete(handleList,handle);
	ds_list_delete(hierarchyItemList,handle);  
	ds_list_delete(nextItemList,handle);



}
