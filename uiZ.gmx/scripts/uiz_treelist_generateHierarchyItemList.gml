///uiz_treelist_generateHierarchyItemList
var lsz = ds_list_size(indentEnabledAndBoxList);
var levelComing;
for(var e = maxHierarchyLevel; e>=0; --e){
    levelComing[e]=false;
}

var lastIndent = 0;
for(var i = lsz-1;i>=0;--i){
    var miscl = indentEnabledAndBoxList[|i];
    var indent = floor(miscl /8);

    var hier = int64(0);
    for(var e = maxHierarchyLevel; e>0; --e){
        hier = (hier*2) + int64(levelComing[e]);
    }
    hierarchyItemList[|i] = hier;
    
    if indent!=lastIndent then{
        levelComing[indent]=true;
        if indent<lastIndent then{//we are going less deep trough the tree
            levelComing[lastIndent]=false;
        }
        lastIndent = indent;
    }
}
