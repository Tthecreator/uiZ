/// @description uiz_treelist_handle_getRootEnd(treelist)
/// @return Returns a handle at the end of in the treelist. This position doesn't actually exist, it is 1 beyond what exists.
/// @param  treelist an instanceid of a treelist
function uiz_treelist_handle_getRootEnd(treelist) {
	return ds_list_size(treelist.indentEnabledAndBoxList);
}
