///uiz_treelist_fixNextItemList(minPosition,offset)
//changes the enxtItemList entry of each item which points to a position higher (or equal) to minPosition and applies an offset to it.
//used when inserting or removing items in the treelist
var lsz = ds_list_size(nextItemList);
for(var i=0;i<lsz;++i){
    var hier = nextItemList[|i];
    if (hier>argument0){
        nextItemList[|i] = hier+argument1;
    }
}
