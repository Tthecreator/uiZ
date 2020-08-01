///uiz_treelist_findNextNodeAtOrBelowLevel(position, level);
var lsz = ds_list_size(indentEnabledAndBoxList);
for(var i = argument0;i<lsz;++i){
    var level = indentEnabledAndBoxList[|i]>>3;
    if level<=argument1 then{
        return i;
    }
}
//no node found
return -1;
