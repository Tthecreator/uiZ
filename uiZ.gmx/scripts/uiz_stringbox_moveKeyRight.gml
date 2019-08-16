///moves the type selection on to the right
if hasselection then{
if keyboard_check(vk_shift) then{
    uiz_stringbox_selpos_moveRight();
}else{//disable the selection and start typing again.
        uiz_stringbox_selection_disable();
        uiz_stringbox_typepos_moveRight();
    }
}else{//just move the typecursor
if keyboard_check(vk_shift) then{
    uiz_stringbox_beginSelection();
    uiz_stringbox_selpos_moveRight();
}else{
uiz_stringbox_typepos_moveRight();
}
}
