/// @description uiz_treelist_item_get_indentLevel(treelist, itemHandle)
/// @param treelist
/// @param  itemHandle
function uiz_treelist_item_get_indentLevel(argument0, argument1) {
	//gets how many levels this treelist is indented.
	//This is equal to the amount of parents this item has.
	//An item at the root has an indentLevel of 0
	return argument0.indentEnabledAndBoxList[|argument1]>>3;



}
