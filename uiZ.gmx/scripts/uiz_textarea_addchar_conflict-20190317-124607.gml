textList[| selection1Line] = uiz_addchar(textList[| selection1Line],selection1Char,argument0)
++selection1Char;
//selection1X+=string_width(argument0);

var selLine = selection1Line;
var linesChanged = uiz_textarea_rework(true,selLine);
    sdbm("return value of linesCHANGED",linesChanged);
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
