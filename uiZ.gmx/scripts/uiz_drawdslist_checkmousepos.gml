///uiz_drawdslist_checkmousepos()
//INTERNAL SCRIPT BY UIZ, PLEASE DON'T USE.
if live_call() return live_result;
var h = starth
var strh;
if endlistat >= ds_list_size(uselist) then {
    endlistat = ds_list_size(uselist) - 1;
}
if uiz_getmouse_x()>=rlx-scrollwidth then{
    uiz_drawdslist_deselect();
}else{
for(var i = startlistat; i <= endlistat; i++) {
    strh = string_height(string(uselist[| i]))
    //check if selected
    var pit = point_in_rectangle(uiz_getmouse_x(), uiz_getmouse_y(), rx, ry + addy + h, rlx - scrollwidth - 0, ry + h + addy + strh);
    osel = sel;
    if pit {
        sel = i;
        var selchanged = false;
        if osel != sel then {
            //update
            uiz_drawdslist_updateviews(true, rx, ry + addy + h, rlx - scrollwidth - 0, ry + h + addy + strh, osel, sel)
            selchanged = true;
        }
        var oselected = selected;
        if mouse_check_button(mb_left) then {
            selected = i;
            //sdbm("doing selected",oselected,selected);
            if keepselection = true then {
                uiz_updater_FixViews();
                keepselected = i;
            }
            if oselected != selected and !selchanged then {
                //update
                uiz_updater_FixViews_area_selfmarked(rx, ry + addy + h, rlx - scrollwidth - 0, ry + h + addy + strh);
                break;
            }
        } else {
            if keepselection = false and selected = i then {
                //update
                uiz_drawdslist_updateviews(false, rx, ry + addy + h, rlx - scrollwidth - 0, ry + h + addy + strh, oselected, selected)
                selected = -1;
                keepselected = -1;
                break;
            }
        }
        break;
    }
    if addy + h > height then {
        //no selection
        
        break;
    }
    h += margin + strh
}
}
