///uiz_treelist_expand(id)
//expands all nodes on the treelist
with(argument0){
    var sz = ds_list_size(nextItemList);
    for(var i=0;i<sz;++i){
        var miscl = indentEnabledAndBoxList[|i];
        var boxState = (miscl mod 4);
        if boxState == uiz_treelist_boxState_collapsed then{
            indentEnabledAndBoxList[|i] = miscl - boxState + uiz_treelist_boxState_extended;
            uiz_treelist_switch_node_updateXML(i);
        }
        nextItemList[|i] = i+1;
    }
    expandedLines = sz;
}

