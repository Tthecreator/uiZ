///uiz_setParent(instanceid, newParent)
//remove from old parentlist

if !(argument0.parent=argument1) then{
if argument0.listpos>-1 then{
ds_list_delete(argument0.parent.children,argument0.listpos)
for(var i=argument0.listpos;
i<ds_list_size(argument0.parent.children);
i++){
var u=argument0.parent.children[| i];
u.listpos-=1}
}
//set new parent
var t=argument1;
argument0.parent=t

if !ds_exists(t.children,ds_type_list) then{t.children=ds_list_create()}
ds_list_add(t.children,argument0.id)
argument0.listpos=ds_list_size(t.children)-1
with(argument0){
    uiz_fix_Depth();
}
}
