var oldListFrom = listFromPx;
    listFromPx=uiz_drawscrollbar_getscrollvalue(scroll);
    if oldListFrom!=listFromPx then{
        uiz_updater_FixViews_inside();
        uiz_textarea_registerTypeCursor();
    }
