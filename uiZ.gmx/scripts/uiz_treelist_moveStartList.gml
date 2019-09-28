///uiz_treelist_moveStartList(+-offset)
if (argument0>0) then{
    repeat(argument0){
        startList = nextItemList[|startList];
    }
}else if(argument0<0) then{//traversing this list requires a bit more of an algorithm
    var minSearchLevel = indentEnabledAndBoxList[| startList]>>3;
    var positionsMovedUp = 0;
    var candidate = -1;
    for(var i=startList;i>=0;--i){
        var currentLevel = indentEnabledAndBoxList[| i]>>3;        
        if currentLevel<minSearchLevel or i==0 then{//we've gone past the mininum search depth, use last found candidate
            if candidate != -1 then{
                i = candidate;
                currentLevel = indentEnabledAndBoxList[| i]>>3;           
            }//else{
            //sdbm("[uiZ|ERROR] Failed to find candidate treelist item to move treelist scroll start position to")
            //show_error("[uiZ|ERROR] Failed to find candidate treelist item to move treelist scroll start position to",false)
            //}
            sdbm("setting startList to",i)
            startList = i;
            candidate = -1;
            minSearchLevel = currentLevel;
            ++positionsMovedUp;
            if (positionsMovedUp >= -argument0) then{exit;}
            continue;
        }
        if (nextItemList[|i]==startList){//possible candidate
            candidate = i;    
        }
    }
}

