
var ubkmar = bkmar;

if uselist != -1 and ds_exists(uselist, ds_type_list) then {

    if font>-1 then{draw_set_font(font)}
    var sz = ds_list_size(uselist)
    if ds_exists(enabledlist, ds_type_list) then {
        var esz = ds_list_size(enabledlist)
    }
    var h = 0;
    var th, txt;
    //set old selection
        oldselection = selection;
        sel_oy = sel_y;
        sel_oly = sel_ly;
    if wait=false and destroy <= 0 and !point_in_rectangle(uiz_getmouse_x(), uiz_getmouse_y(), rx, iy, rlx, ily) and mouse_check_button(mb_left) then {
        updated = 1
        selection = -1;
    }else{
    problems = 0;
    for (var i = scroll; i < sz; i++) {
    
        txt = string(uselist[| i])
        th = string_height(string_hash_to_newline(txt))
        if ds_exists(enabledlist, ds_type_list) and esz > i and enabledlist[| i] = false then {
            var isaena = false
        } else {
            var isaena = true
        }
        if destroy <= 0 and (uiz_getmouse_y() > (iy + h)) and (uiz_getmouse_y() < (iy + th + h)) then {
            selection = i;
            sel_y = iy+h;
            sel_ly = iy+th+h;
        }

        h += th + margin
        if iy + h > global.screenpxheight or h > height then {
            problems = 1;
            break;
        }
    }
    if mouse_check_button(mb_left) then {
        selectioncol = 2
    } else {
        selectioncol = 1
    }

    if scroll > 0 and(iy + h) < global.screenpxheight then {
        while ((scroll - 1) > 0) {
            txt = string(uselist[| scroll - 1])
            th = string_height(string_hash_to_newline(txt))
            h += th + margin
            if (sy + h) < global.screenpxheight then {
                scroll--
            } else {
                break;
            }
        }
    }
    }
    if oldselection != selection then {
        uiz_mousemenu_update_full();

    }

if selection>0 then{uiz_set_cursor(cr_handpoint)}
}

