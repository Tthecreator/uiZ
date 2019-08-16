//with(argument0){
//if global.mouseover=id then{
if ds_exists(children,ds_type_list) then{
var sz=ds_list_size(children);
for(var i=sz;i>=0;i--){
with(children[|i]){
if uiz_enabled=true{
event_user(1);
if global.mouseover=id then{uiz_updater_mouse_processing();i=-1;}
}
}
}

}
//}
//}
