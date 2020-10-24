/// @description uiz_treelist_findNextNodeAtOrBelowLevel(position, level);
/// @param position
/// @param  level
function uiz_treelist_findNextNodeAtOrBelowLevel(argument0, argument1) {
	var lsz = ds_list_size(indentEnabledAndBoxList);
	for(var i = argument0;i<lsz;++i){
	    var level = indentEnabledAndBoxList[|i]>>3;
	    if level<=argument1 then{
	        return i;
	    }
	}
	//no node found
	return -1;



}
