updated=false;
update=false;
//sdbm("updaing kmouseover",kmouseover);
if kmouseover>0 then{uiz_set_cursor(cr_handpoint)}
if kmouseover==uiz_mousereleased and ds_exists(dslist,ds_type_list) then{
//sdbm("spawning that moad menu");
menu=uiz_spawnMouseMenu(dslist,false,actionlist)
menu.enabledlist=enabledlist
if script_exists(menutemplate) then{script_execute(menutemplate,menu)}
update=true;
uiz_updater_unstep();
}
uiz_fix_Background();

uiz_updater_FixViews();

