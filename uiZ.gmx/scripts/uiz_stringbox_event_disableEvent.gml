///check to disable this event
if kmouseover=0 and mouse_check_button(mb_left) and typing = true then {
    typing = false;
    uiz_typecursor_deregister();
    uiz_stringbox_selection_disable();
    update = true;
    updated = true;
    uiz_updater_unstep();
    return true;
}
return false;

