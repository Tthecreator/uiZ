///uiz_treelist_isItemVisible(treelist,handle)
//returns whether all the parents of the item are extended.
with(argument0){
    var maxH = min(argument1,ds_list_size(nextItemList));
    h = 0;
    while(true){
        h = nextItemList[|h];
        if h>maxH then{
            //not visible, we passed it without finding it.
            return false
        }else{
            if h==maxH then{//match found
                return true;
            }
        }
    }
}
