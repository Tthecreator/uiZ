/// @description uiz_treelist_item_set_indentLevel(treelist, itemHandle, indentLevel)
/// @param treelist The instanceid of the treelist to update
/// @param itemHandle The item within the treelist to change
/// @param indentLevel What indentLevel the item should have
function uiz_treelist_item_set_indentLevel(argument0, argument1, argument2) {
	//sets how many levels this treelist item is indented.
	//This is equal to the amount of parents this item has.
	//An item at the root has an indentLevel of 0
	uiz_treelist_updateItemView(argument0, argument1);
	argument0.indentEnabledAndBoxList[|argument1] = (argument2 << 3) + (argument0.indentEnabledAndBoxList[|argument1] mod 8)
	argument0.indentEnabledAndBoxList[|argument1] -= ((((argument0.indentEnabledAndBoxList[|argument1])>>2) mod 2) << 2);//remove current value
	argument0.indentEnabledAndBoxList[|argument1] += (argument2 << 2);//add new valu
}
