///INTERAL UIZ SCRIPT, DO NOT USE.
var a=argument0;
with(argument1){
update=0
updated=0
//sdbm("executing step")
if !instance_exists(menu) then{menuis=0;exit;}
if menuis=1 and menu.update=1 then{
if menu.selected!=-1 then{
select=menu.selected
}

}
if menuis=1 and menu.updated=1 then{
menuis=0
cancreate=0
updated=1
if menu.selected!=-1 then{
selected=menu.selected
select=menu.selected
value=string(uselist[| selected]);
}
}
uiz_updater_FixViews();
}
