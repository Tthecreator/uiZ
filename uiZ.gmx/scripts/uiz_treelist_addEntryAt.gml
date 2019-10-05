///uiz_treelist_addEntryAt(id, handle, name, [sprite], [spriteImage], [indentLevel],[enabled], [boxState])
//adds an entry right before a handle, with the same indentation as the item on the handle
//enabled: This item is grayed out
with(argument[0]){
    var handle = argument[1];
    if handle=-1 then{handle=0;}
    var spr = -1;
    var enabled = true;
    var boxState = uiz_treelist_boxState_noBox;
    var level = indentEnabledAndBoxList[|handle]>>3;
    switch(argument_count){
        default:
        case 8://boxState
            var boxState = argument[7];
        case 7://enabled
            enabled = argument[6];
        case 6://level
            level = argument[5];
        case 5://image
            spr += argument[4];
        case 4://sprite
            spr = argument[3]<<7;
        case 3://do nothing, required argument
            break;
        case 2:
        case 1:
        case 0:
            show_error("Invalid amount of arguments for uiz_treelist_addEntryAt",true);
    }
    ds_list_insert(textList,handle,argument[2]);
    ds_list_insert(nextItemList,handle,handle+1);
    ds_list_insert(spriteList,handle,spr);
    ds_list_insert(handleList,handle,spr);
    ds_list_insert(nextItemList,handle,handle+1);
    //var curNextItem = hierarchyItemList[|handle];
    ds_list_insert(hierarchyItemList,handle,-1);//will be overwritten anyways after fixing the item list
    ds_list_insert(indentEnabledAndBoxList,handle,(level<<3)+(enabled<<2)+boxState);
    uiz_treelist_fixNextItemList(handle,1);
    hierarchyItemList[|handle] = handle+1;
    sdbm("break here");
}
