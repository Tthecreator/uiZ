mx=uiz_getmouse_x()-rx
my=uiz_getmouse_y()-ry

var pxs=(isz+marginx);
if (mx % pxs)<marginx then{
    onitem=-1;
}else{
    onitem=floor(mx/pxs);
if onitem>=items then{
    onitem=-1;
}
}


if onitem_old!=onitem then{
    //reset animation
    var upd=false;
    if onitem_old>=0 and count>0 then{
        upd=true;
        //if decount_counting>0 then{upd=true}//if this is the first item in the list
        decount_counting++;
        decount[onitem_old] = count;
    }
    if onitem!=-1 or upd=true then{
    uiz_updater_step();}
    count = 0
    uiz_functionbar_updateitem(onitem_old);
    uiz_functionbar_updateitem(onitem);
    onitem_old=onitem;
}


///check on mouse stuff
var i = onitem;
//if (i>=0 and point_in_rectangle(uiz_getmouse_x(), uiz_getmouse_y(), sx + h, sy + marginy, sx + h + isz, sly - marginy)) then {
if (i>=0 and i<items) then{
    if kmouseover > 0 then {
        uiz_set_cursor(cr_handpoint)
    }
    if mouse_check_button_released(mb_right) {
        if menu[i] != 0 then {
            script_execute(menu[i])
        }
    }
    //thisstepselected = i
    if is_string(menu[i]) = 1 or menu[i] > 0 then {
        var addisz = isz / 9 + 5;
    } else {
        var addisz = 0
    }
    if uiz_getmouse_y() > sly - marginy - addisz then {
        thisstepselected += 0.5
    } else {
        if mouse_check_button_released(mb_left) {
            if clicked[i] != 0 then {
                script_execute(clicked[i])
            }
        }
    }
    uimg = 1
    var fac;
        fac = (uiz_animation_getFunction(count, graphtype));
        selectioncolor = uiz_functionbar_createcolor(color[i],fac);
        

        
        if uiz_getmouse_y() > sly - marginy - addisz and mouse_check_button(mb_left) {
            if menu[i] != 0 then {
                script_execute(menu[i])
            }
    }
}


