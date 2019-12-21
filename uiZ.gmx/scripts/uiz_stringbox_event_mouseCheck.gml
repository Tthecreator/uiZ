///mouse check
if kmouseover==0 then{//uiz_set_cursor(cr_beam)}else{
uiz_set_cursor(cr_default);
}



if global.systemsupportskeyboard = true then {
    switch (kmouseover) {

        case 3:
            
            
            if uiz_getmouse_x()<=i_ilx then{
                uiz_mouse_freeze();
                hasmouse=true;
                if typing=false then{
                typing = true
                keyboard_oldlastchar="";
                uiz_updater_FixViews();
            
            }
            if !keyboard_check(vk_shift) then{//check for shift so we can make selections from our typing position by clicking and pressing shift.
                uiz_stringbox_selection_disable();
                sel_canMove_counter=1;
                uiz_updater_step();
                var typepos_dis_array = uiz_stringbox_getmousepos_dis();
                typepos_dis=typepos_dis_array[0];
                typepos_dis_px=typepos_dis_array[1];
                uiz_stringbox_typecursor_register();
                uiz_stringbox_resetSelStrings();
                uiz_stringbox_typepos_real_from_dis();
                sel_beg_fix = string_copy(sel_str_beg,1,string_length(sel_str_beg)-1);
                //sdbm("set fix",sel_beg_fix);
            }
            }
            break;
            case 1:
            if typing=false then{
                uiz_updater_FixViews();}
            break;
        case 0:
            if typing=false then{
                uiz_updater_FixViews();}
        //there is no break statement on purpose
        case 4:
        if hasmouse=true then{
            uiz_mouse_unfreeze();
            hasmouse=false;
            }
            if selpmin=selpmax then{//check if selection is non existant
                uiz_stringbox_selection_disable();
            }
        break;
    }
} else {
    if kmouseover = 3 then {
        str_real = get_string(messagetext, value)
        if maxlength > 0 then {
            str_real = string_copy(value, 1, maxlength)
        }
    }
}



