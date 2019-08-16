//remove from old parentlist
//set new parent
parent=obj_uiZ_controller.id

if !ds_exists(parent.children,ds_type_list) then{parent.children=ds_list_create()}
ds_list_add(parent.children,id)
listpos=ds_list_size(parent.children)-1
//dbm("init",listpos)
