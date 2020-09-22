updated=false
if kmouseover>0 then{uiz_set_cursor(cr_handpoint)}
if kmouseover=3 then{
updated=true;
value=!value;
uiz_updater_step();
update=true;
}


