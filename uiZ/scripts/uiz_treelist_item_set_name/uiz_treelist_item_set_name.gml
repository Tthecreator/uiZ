/// @description uiz_treelist_item_set_name(treelist, itemHandle, name)
/// @param treelist The instanceid of the treelist to update
/// @param itemHandle The item within the treelist to change
/// @param name What name to give the treelist item
function uiz_treelist_item_set_name(argument0, argument1, argument2) {
	//sets the text displayed on this item.
	argument0.textList[|argument1] = argument2;
}
