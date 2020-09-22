/// @description uiz_treelist_fixNextItemList(minPosition,offset)
/// @param minPosition
/// @param offset
function uiz_treelist_fixNextItemList(argument0, argument1) {
	//changes the enxtItemList entry of each item which points to a position higher (or equal) to minPosition and applies an offset to it.
	//used when inserting or removing items in the treelist
	var lsz = ds_list_size(nextItemList);
	for(var i=0;i<lsz;++i){
	    var hier = nextItemList[|i];
	    if (hier>=argument0){
	        if (hier==argument0)then{
	            if (uiz_treelist_item_get_boxState(id, i)==uiz_treelist_boxState_collapsed){
	            nextItemList[|i] = hier+argument1;
	            }
	        }else{
	            nextItemList[|i] = hier+argument1;
	        }
	    }
	}



}
