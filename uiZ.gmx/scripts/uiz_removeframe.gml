/////DONT USE THIS SCRIPT, USE uiz_destroyobject()
ds_list_delete(argument0.parent.children,argument0.listpos)
for(var i=argument0.listpos;
i<ds_list_size(argument0.parent.children);
i++){
var u=argument0.parent.children[| i];
u.listpos--}
with(argument0){instance_destroy()}
