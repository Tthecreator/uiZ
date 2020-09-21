///uiz_treelist_generateHierarchyItemList
//if live_call() return live_result;
var lsz = ds_list_size(indentEnabledAndBoxList);
var hier = int64(0);

var lastIndent = 0;
for(var i = lsz-1;i>=0;--i){
    var miscl = indentEnabledAndBoxList[|i];
    var indent = miscl>>3;

    hierarchyItemList[|i] = hier;
    
    if indent!=lastIndent then{
        hier |= 1<<(indent-1);
        if indent<lastIndent then{//we are going less deep trough the tree
            hier &= ~(1<<(lastIndent-1))
            levelComing[lastIndent]=false;
        }
        lastIndent = indent;
    }
}
