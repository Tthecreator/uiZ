with(argument0){
if object_index=obj_uiZ_windowholder then{
global.uiz_debug_text=global.uiz_debug_text+"#"+uiz_string_repeat("    ",global.uiz_debug_count)+string(id)+" | "+object_get_name(object_index)+ " | "+string(depth);
}
global.uiz_debug_count++;
if ds_exists(children,ds_type_list) then{
var sz=ds_list_size(children);
for(var i=0;i<sz;i++){
uiz_updater_debug_processing(children[|i])
}
}
global.uiz_debug_count--;
}
