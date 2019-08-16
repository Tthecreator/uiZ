var selLine = argument0;//selection1Line;
var linesChanged = uiz_textarea_rework(true,selLine);
    //sdbm("return value of linesCHANGED",linesChanged);

if (uiz_textarea_moveCursorInView()==false) then{
    switch(linesChanged){
        case 0://no line/only one line has changed
            uiz_textarea_rework_selection();
            uiz_updater_FixViews_area(ix,uiz_textarea_getlineY(selLine),ilx,uiz_textarea_getlineY(selLine+1));
        break;
        case 1:
            uiz_updater_FixViews_area(ix,uiz_textarea_getlineY(selLine),ilx,ily);
        break;
        case 2:
            uiz_updater_FixViews_area(ix,iy,ilx,ily);
        break;
    }
}
