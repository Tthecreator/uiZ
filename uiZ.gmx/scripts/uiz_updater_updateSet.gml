//sdbm("updating updateSet")
//argument0: object to start updating
//argumetn1: force update all objects
with(argument0){

if argument1 or ((object_index=obj_uiZ_controller or uiz_doredraw=true or uiz_dodraw=true or obj_uiZ_controller.uiz_updateall=true) and uiz_enabled=true)  then{

if object_index!=obj_uiZ_controller then{
global.uiz_fix_updates_draw++;
view_fix=false;
event_user(0)
}
if ds_exists(children,ds_type_list) then{
var sz=ds_list_size(children);
for(var i=0;i<sz;i++){
uiz_updater_updateSet(children[|i],argument1)
}
}
}
}
