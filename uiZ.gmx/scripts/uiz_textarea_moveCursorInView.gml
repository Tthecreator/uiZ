if doscroll then{
    if hasSelection then{
    var sLine = selection2Line;
    }else{
    var sLine = selection1Line;
    }
    var listFrom = uiz_textarea_getListFrom();
    var listTo = uiz_textarea_getListTo(listFrom);
    if sLine<=ceil(listFrom) then{
        listFromPx = sLine*fontHeight;
        uiz_drawscrollbar_setvalue(scroll, listFromPx);
        uiz_updater_FixViews_inside();
        return true;
    }else if sLine>=floor(listTo){
        listFromPx = (sLine+1)*fontHeight-iheight;
        if listFromPx<0 then{
            listFromPx=0;
        }
        uiz_drawscrollbar_setvalue(scroll, listFromPx);
        uiz_updater_FixViews_inside();
        return true;
    }
    
}
return false;
