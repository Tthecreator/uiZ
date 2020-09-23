with (other) {
//sdbm(id,object_get_name(object_index),object_index,obj_uiZ_controller.object_index,obj_uiZ_mousemenu.object_index)
//sdbm(global.mouseover,obj_uiZ_controller.id,obj_uiZ_mousemenu.id)
var km=min(kmouseover,2);
if selection>=0 and selectioncol!=km then{
    selectioncol=km;
    uiz_mousemenu_update_new();
}

if kmouseover=uiz_mousereleased then{
    if wait=false then{
    //action
    if actionlist != -1 and ds_exists(actionlist, ds_type_list) then {
        script_execute(actionlist[| i])
    }
    selected = selection
    updated = 1
    if listener_script!=-1 and script_exists(listener_script) then{
    script_execute(listener_script,id,listener);
    }
    //uiz_destroyObject_animation_default(id);
    }else{
        wait=false;
    }
    uiz_mousemenu_update_new();
}

}
