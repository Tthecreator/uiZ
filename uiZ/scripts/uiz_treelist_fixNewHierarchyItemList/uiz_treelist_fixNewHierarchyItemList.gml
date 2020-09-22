/// @description uiz_treelist_fixNewHierarchyItemList(position, level)
/// @param position
/// @param  level
function uiz_treelist_fixNewHierarchyItemList(argument0, argument1) {
	var searchLevel = argument1;
	var mask = 1<<(searchLevel-1)
	for(var i = argument0-1;i>=0;--i){
	    if (hierarchyItemList[|i]&mask)==mask then{
	        exit;
	    }
	    hierarchyItemList[|i] |= mask;
	    if (indentEnabledAndBoxList[|i]>>3)<=searchLevel then{
	        exit;
	    }
	}



}
