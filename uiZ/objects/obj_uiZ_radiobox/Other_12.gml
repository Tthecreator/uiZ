//kmouseover=uiz_mouse_isOver_object_leftCheck(id)
if kmouseover>0 then{uiz_set_cursor(cr_handpoint)}
update=0
updated=0
if kmouseover=4 then{
uiz_radiobox_setvalue(id,true)
}
uiz_fix_Background();
uiz_updater_FixViews()

