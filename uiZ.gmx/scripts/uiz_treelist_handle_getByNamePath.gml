///uiz_treelist_handle_getByName(id, itemName1, itemName2, ...);
//finds itemName n that is inside itemName n-1, which is inside itemName n-2....etc....
//returns -1 if no valid path is found

with(argument[0]){
    var lsz = ds_list_size(textList);
    var pathSearchDepth = argument_count-1;
    var pathSearch = 0;
    var curIndent = 0;
    for(var i=0;i<lsz;++i){
        var miscl = indentEnabledAndBoxList[|i];
        var indent = miscl >> 3;
        if (indent<curIndent) then{
            pathSearch = 0;
        }
        curIndent = indent;
        if argument[pathSearch+1]==textList[|i] then{
            ++pathSearch;
            if pathSearch==pathSearchDepth then{
                return i;
            }
            ++curIndent;
        }
    }
    return -1;
}
