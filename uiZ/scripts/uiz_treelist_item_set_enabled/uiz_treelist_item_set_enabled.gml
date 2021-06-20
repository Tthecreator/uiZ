/// @description uiz_treelist_item_set_enabled(treelist, itemHandle, enabled)
/// @param treelist The instanceid of the treelist to update
/// @param itemHandle The item within the treelist to change
/// @param enabled Whether to enable/disable the treelist item
function uiz_treelist_item_set_enabled(argument0, argument1, argument2) {
	uiz_treelist_updateItemView(argument0, argument1);
	//uiz_updater_FixViews_with(argument0);
	argument0.indentEnabledAndBoxList[|argument1] -= ((((argument0.indentEnabledAndBoxList[|argument1])>>2) mod 2) << 2);//remove current value
	argument0.indentEnabledAndBoxList[|argument1] += (argument2 << 2);//add new value
}