var oldDoscroll = doscroll;
scrolllines = expandedLines*fontHeight - height;
if scrolllines > 0 then{
    doscroll = true;
}else{
    doscroll = false;
    startOffset = 0;
    startPos = 0;
    startList = 0;
    scroll=uiz_drawscrollbar_init();
}
var update = false;
if doscroll and uiz_drawscrollbar_getvalue(scroll) > scrolllines then{
    uiz_drawscrollbar_setvalue(scroll,scrolllines);
    var oldStartPos = startPos;
    startPos = scrolllines div fontHeight;
    startOffset = -(scrolllines mod fontHeight);
    uiz_treelist_moveStartList(startPos-oldStartPos);
    var update = true;
}
if (update or doscroll!=oldDoscroll) and view_fix=false then{
    if doscroll then{
        updateScroll = true;
        uiz_updater_FixViews_area_selfmarked(scrollBarX,ry,rlx,rly);
    }else{
        uiz_updater_FixViews_area(scrollBarX,ry,rlx,rly);//just redraw parts of the list
    }
}
