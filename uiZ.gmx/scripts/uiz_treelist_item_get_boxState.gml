///uiz_treelist_item_get_boxState(treelist, itemHandle)
//gets the state of the little +/- box used to expand/collapse items
//returns either:
// - uiz_treelist_boxState_noBox (no box is drawn)
// - uiz_treelist_boxState_collapsed (a + box is drawn)
// - uiz_treelist_boxState_extended (a - box is drawn)
return (argument0.indentEnabledAndBoxList[|argument1]) mod 4;
