///uiz_treelist_handle_getEnd(treelist, handle)
//takes a treelist handle and returns a handle to the last item in the node.


// + TEST
//      something
//      + more
//          hi_there
//          whats_up
// + TEST2
//
//uiz_treelist_handle_getEnd(treelist, handleToTest)
//In the above example a handle to whats_up would be returned.


// + TEST
// + TEST2
//
//In the above example simply "TEST" would be returned
with(argument0){
    var handleLevel = indentEnabledAndBoxList[|argument1]>>3;
    var lsz = ds_list_size(textList);
    for(var i=argument1+1;i<lsz;++i){
        var level = indentEnabledAndBoxList[|i]>>3;
        if (level<=handleLevel) then{
            return i-1;
        }
    }
    return lsz;
}
