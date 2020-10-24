//kmouseover=uiz_mouse_isOver_object_leftCheck(id)
if kmouseover>0 then{uiz_set_cursor(cr_handpoint)}
update=0
updated=0
if kmouseover=4 then{
update=1
updated=1
value=clamp(1-value,0,1)
}

uiz_updater_FixViews();

