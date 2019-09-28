///uiz_treelist_expand(id)
//expands all nodes on the treelist
with(argument0){
    var sz = ds_list_size(nextItemList);
    for(var i=0;i<sz;++i){
        nextItemList[|i] = i+1;
    }
    expandedLines = sz;
}

