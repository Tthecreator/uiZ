if doScroll then{
    var oldScroll = uiz_drawscrollbar_getValue(scroll);
    uiz_drawscrollbar_vertical_step(scrollbarX, ry, rlx, rly, scroll, scrollLines, true, scrollSpeed, scrollbarAnimation, scrollbarAnimationTime);
    if oldScroll != uiz_drawscrollbar_getValue(scroll){//if the scroll value has changed then we need to tell uiZ to redraw this object.
        uiz_updater_FixViews();
    }
}

