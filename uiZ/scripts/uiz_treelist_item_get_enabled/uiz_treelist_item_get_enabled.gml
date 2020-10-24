/// @description uiz_treelist_item_get_enabled(treelist, itemHandle)
/// @param treelist
/// @param  itemHandle
function uiz_treelist_item_get_enabled(argument0, argument1) {
	//gets if this item is enabled
	return ((argument0.indentEnabledAndBoxList[|argument1])>>2) mod 2;



}
