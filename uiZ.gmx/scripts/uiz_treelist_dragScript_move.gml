//if live_call(argument0,argument1,argument2,argument3,argument4) return live_result;
var draggingItem = argument1;//the #id of the item being dragged
var itemDestination = argument2;//the #id of the item being dragged to
var itemDestinationYPosition = argument3;//if the draggingItem was dragged to the bottom half of the itemDestination (=1) or if the draggingItem was dragged to the top half of the itemDestination (=0), and everthing between those two values.
if instance_exists(argument0) and draggingItem!=-1 and itemDestination!=-1{
    with(argument0){
        if itemDestinationYPosition<0.5 then{//if we are hovering over the top of the tiem
            uiz_treelist_moveEntry_recursive(argument0,draggingItem,itemDestination);
        }else{//if we are hovering over the bottom of the item
            var addIndent = 0;
            if uiz_treelist_item_get_boxState(argument0,itemDestination)!=uiz_treelist_boxState_noBox then{
                addIndent=1;//add indent if we are putting this inside another item (instead of under it). We put the item inside when the destination has children.
            }
            uiz_treelist_moveEntry_recursive(argument0,draggingItem,itemDestination+1,uiz_treelist_item_get_indentLevel(argument0,itemDestination)+addIndent);//add item below the destination, with the same indent as the destination
        }
        /*
        for(var i=0;i<ds_list_size(indentEnabledAndBoxList);++i){
            sdbm(textList[|i],"indent: ",indentEnabledAndBoxList[|i]>>3,id)
        }
        */
    }
    
    uiz_updater_FixViews();
}
