///mouse hover
var cy = false;
var cx = false;
var c=false;


if scrolly = true or scrollx = true or snapm = true then {

    c=uiz_frame_stepScrollbars();

    /***************************************************
      middle mouse scroll and drag
     ***************************************************/
     if uiz_drawscrollbar_getselected(uscrollx)=false and uiz_drawscrollbar_getselected(uscrolly)=false then{
    if global.mouseoverscrollable = id and snapm = false then {
        if (scrolly = true or scrollx = true) and mouse_check_button_pressed(mb_middle) then {
            snapm = true;
            snapx = uiz_getmouse_x()
            snapy = uiz_getmouse_y()
            uiz_snapper_enable(snapx,snapy);
            global.mousefrozen = true
        }
        if global.mousefrozen = false and snapm = false and uscrolly < 0 and uscrollx < 0 and(scrolly = true or scrollx = true) and mouse_check_button(mb_left) and global.lastsecondmousemoved > global.mousemovetoscroll then {
            snapk = true;
            snapx = uiz_getmouse_x()
            snapy = uiz_getmouse_y()
            global.mousefrozen = true
        }
    }


    if snapk = true then {
        if (scrolly = false and scrollx = false) or!mouse_check_button(mb_left) or uscrolly >= 0 then {
            snapk = false;
            global.mousefrozen = 0;
        }
        if scrolly = true then {
            addy -= global.lastmousemovedy;
            //sdbm("addy3",addy)
            cy = true;
        }
        if scrollx = true then {
            addx -= global.lastmousemovedx;
            cx = true;
        }
    }


    if snapm = true then {
        if ((scrolly = false and scrollx = false) or !mouse_check_button(mb_middle)) then {
            snapm = false;
            uiz_set_cursor(cr_default)
            uiz_snapper_disable();
            global.mousefrozen = 0;
        }else{

        uiz_set_cursor(cr_size_all)
        
        if scrolly = true then {
            var sped = snapy - uiz_getmouse_y();
            addy += sped;
            cy = true;
        }

        if scrollx = true then {
            var sped = snapx - uiz_getmouse_x();
            addx += sped;
            cx = true;
        }
}
    }
    }

    
    if cx = true or cy = true or c=true then {
    
    if cx = true then {
        addx = clamp(addx, mscrollbarx, 0)
        uiz_drawscrollbar_setvalue(uscrollx,-addx);
        uiz_drawscrollbar_update(uscrollx,rx,ily,rlx-scrollbarcorner_x,rly,uiz_horizontal)
    }
    
    if cy = true then {
        addy = clamp(addy, mscrollbary, 0)
        uiz_drawscrollbar_setvalue(uscrolly,-addy);
        uiz_drawscrollbar_update(uscrolly,ilx,ry,rlx,rly-scrollbarcorner_y,uiz_vertical);
    }
    
        uiz_frame_tellListeners();
        uiz_fixchildren(id, true)
        uiz_updater_FixViews();
        
    }

}
