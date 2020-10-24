updated=false;
//kmouseover=uiz_mouse_isOver_object_leftCheck(id)
if kmouseover>0 then{uiz_set_cursor(cr_handpoint)}
if kmouseover=3 then{
//flip value
if oldvalue!=value then{oldvalue=value}
value=!value
updated=true;
update=true;
uiz_updater_step();
}
uiz_fix_Background();
uiz_updater_FixViews();
//uiz_updater_FixViews_area(knobX-knobSizePx/2,knobY-knobSizePx/2,knobX+knobSizePx/2,knobY+knobSizePx/2);

