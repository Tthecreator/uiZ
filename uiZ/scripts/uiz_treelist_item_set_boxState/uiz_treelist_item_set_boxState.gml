/// @description uiz_treelist_item_set_boxState(treelist, itemHandle, boxState)
/// @param treelist
/// @param itemHandle
/// @param boxState set to either:
///			- uiz_treelist_boxState_noBox (no box is drawn)
///			- uiz_treelist_boxState_collapsed (a + box is drawn)
///			- uiz_treelist_boxState_extended (a - box is drawn)
function uiz_treelist_item_set_boxState(argument0, argument1, argument2) {
	uiz_treelist_updateItemView(argument0, argument1);
	argument0.indentEnabledAndBoxList[|argument1] = (argument0.indentEnabledAndBoxList[|argument1] - ((argument0.indentEnabledAndBoxList[|argument1]) mod 4)) + argument2;
}
