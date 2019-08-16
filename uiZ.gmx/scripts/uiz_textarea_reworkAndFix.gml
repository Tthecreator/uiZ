var oldScrolllines = scrolllines;
var selLine = selection1Line + argument0 ;
var linesChanged = uiz_textarea_rework(true,selection1Line-1);
switch(linesChanged){
    case 0://no line/only one line has changed
        uiz_textarea_rework_selection();
        uiz_updater_FixViews_area(ix,uiz_textarea_getlineY(selLine-1),ilx,uiz_textarea_getlineY(selLine+1));
    break;
    case 1:
        uiz_updater_FixViews_area(ix,uiz_textarea_getlineY(selLine-1),ilx,ily);
    break;
    case 2:
        uiz_updater_FixViews_area(ix,iy,ilx,ily);
    break;
}

if linesChanged!=2 and oldScrolllines!=scrolllines then{
    uiz_updater_FixViews_area(ilx-scblwidth-2,iy,ilx,ily);
}

