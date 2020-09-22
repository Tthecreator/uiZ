/// @description scrollbar and item deselection
//if live_call() return live_result;
if kmouseover=0 then{
    var srlx = rlx;
    if doscroll then{srlx=scrollBarX-1;}
    if currentSelectionPos!=-1 then{
        uiz_updater_FixViews_area_selfmarked(rx,ry+startOffset+(currentSelectionPos-startPos)*fontHeight,srlx,ry+startOffset+(currentSelectionPos-startPos+1)*fontHeight);    
        updateMouseAreas = true;
    }
    lastSelectionPos = currentSelectionPos;
    lastSelectionList = currentSelectionList;
    currentSelectionList = -1;
    currentSelectionPos = -1;
    kmouseover_last=0;
    //uiz_drawscrollbar_deselect(scrollBarX,iy,ilx,ily,uiz_vertical,scroll);
}

