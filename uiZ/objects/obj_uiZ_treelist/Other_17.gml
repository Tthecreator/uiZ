/// @description scrollbar
if doscroll=true then{
    var oldscroll = uiz_drawscrollbar_getValue(scroll);
    uiz_drawscrollbar_vertical_step(scrollBarX,iy,ilx,ily,scroll,scrolllines,true,uiz_getposx(scrollspeed,dp),scrollbarAnimation, scrollbarAnimationTime);
    var newscroll = uiz_drawscrollbar_getValue(scroll);   
    if oldscroll!=newscroll then{    
        var oldStartPos = startPos;
        startPos = newscroll div fontHeight;
        startOffset = -(newscroll mod fontHeight);
        uiz_treelist_moveStartList(startPos-oldStartPos);
        uiz_updater_FixViews();
    }
}

