///uiz_treelist_updateScrollbar()
//makes sure the scrollbar is redrawn to the screen
with(argument0){
    if(doscroll){
        updateScroll = true;
        uiz_updater_FixViews_area_selfmarked(scrollBarX,ry,rlx,rly);
    }
}
