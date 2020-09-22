/// @description mouse selection
//if live_call() return live_result;
lastSelectionPos = currentSelectionPos;
lastSelectionList = currentSelectionList;

//get new scrollpos
if doscroll==false or uiz_getmouse_x()<scrollBarX then{//if mouse not on scrollbar
    //get what item number the mouse should be on.
    var mouseRelativeItemPos = (uiz_getmouse_y()-ry-startOffset) div fontHeight;
    currentSelectionPos = mouseRelativeItemPos + startPos;
    currentSelectionList = startList;
    if mouseRelativeItemPos>0 then{
        repeat(mouseRelativeItemPos){
            if currentSelectionList < 0 or currentSelectionList>=ds_list_size(nextItemList) then{
                currentSelectionList = -1;
                currentSelectionPos = -1;
                break;//no further mouse checking is needed
            }
            currentSelectionList = nextItemList[|currentSelectionList];
        }
    }
    if currentSelectionList = -1 or currentSelectionList>=ds_list_size(nextItemList) then{
            currentSelectionList = -1;
            currentSelectionPos = -1;
    }
}else{
    currentSelectionPos = -1;
    currentSelectionList = -1;
}
obj_uiZ_controller.mouseswipeclick_distance = 1;
//sdbm("mx",global.uiz_mouseswipeclick,draggingItem,draggingItemCandidate)
//uiz_mouse_unfreeze()
//handle mouse
if currentSelectionPos!=-1 then{
//check if we need to expand anything
    switch(kmouseover){
        case uiz_mousereleased:
            //expand node
            if draggingItem=-1 then{
                if onClickScript>=0 and script_exists(onClickScript) and currentSelectionList>=0 and currentSelectionList<ds_list_size(textList) then{
                    script_execute(onClickScript,id,currentSelectionList)
                }
            }
        case uiz_mousepressed:
            if draggingItemCandidate=-1 and mouse_check_button_pressed(mb_left) then{
                //sdbm("New candiate",draggingItemCandidate)
                draggingItemCandidate = currentSelectionList;
                draggingItemCandidateRelativePos = mouseRelativeItemPos;
                draggingSnapY = uiz_getmouse_y()-(ry+fontHeight*currentSelectionPos-startOffset);
                draggingSnapX = uiz_getmouse_x()-rx;
                draggingStartY = uiz_getmouse_y();
            }
        break;
        default:
        break;
    }
}


var srlx = rlx;
if doscroll then{srlx=scrollBarX-1;}

if draggingItem=-1 and draggingItemCandidate!=-1 and (global.uiz_mouseswipeclick or abs(draggingStartY - uiz_getmouse_y())>5) and mouse_check_button(mb_left) then{
    //sdbm("Initializing swipe2")
    draggingItem = draggingItemCandidate;
    draggingItemRelativePos = draggingItemCandidateRelativePos;
    draggingItemCandidate = -1;
    
    if draggingItem!=-1 and draggingItem<ds_list_size(textList) then{
        drawDraggingItem=draggingItem;
        uiz_updater_FixViews_area_selfmarked(rx,ry+startOffset+draggingItemRelativePos*fontHeight,srlx,ry+startOffset+(draggingItemRelativePos+1)*fontHeight);
        updateDragArea = true;
    }

    uiz_mouse_freeze();
}

//check for differences between old and new mouse pos and update view
if view_fix=false and (lastSelectionPos!=currentSelectionPos or kmouseover_last!=kmouseover) then{
    updateMouseAreas = true;
    //update specific list items
    if currentSelectionPos!=-1 then{
        uiz_updater_FixViews_area_selfmarked(rx,ry+startOffset+mouseRelativeItemPos*fontHeight,srlx,ry+startOffset+(mouseRelativeItemPos+1)*fontHeight);
    }
    if lastSelectionPos!=currentSelectionPos and lastSelectionPos!=-1 then{
        uiz_updater_FixViews_area_selfmarked(rx,ry+startOffset+(lastSelectionPos-startPos)*fontHeight,srlx,ry+startOffset+(lastSelectionPos-startPos+1)*fontHeight);    
    }
}

if draggingItem!=-1 and mouse_check_button_released(mb_left) then{
        var srlx = rlx;
        if doscroll then{srlx=scrollBarX-1;}
        drawDraggingItem=draggingItem;
        draggingItem=-1;
        uiz_mouse_unFreeze();
        script_execute(onDragScript,id,drawDraggingItem,currentSelectionList, (uiz_getmouse_y()-(ry+fontHeight*(currentSelectionPos-startPos)+startOffset))/fontHeight,true);
        uiz_updater_FixViews_area_selfmarked(rx,ry+startOffset+draggingItemRelativePos*fontHeight,srlx,ry+startOffset+(draggingItemRelativePos+1)*fontHeight);
        updateDragArea = true;
        //lastSelectionPos=-1;
        currentSelectionPos=-1;
    }
    
if mouse_check_button_released(mb_left) then{
    if draggingItem!=-1 then{
        uiz_mouse_unFreeze();
    }//else{
        
//    }
    draggingItem=-1;
    draggingItemCandidate=-1;
}


kmouseover_last = kmouseover;

