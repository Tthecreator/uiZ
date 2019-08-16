///uiz_setparent(object,newparent)
//remove from old parentlist
//if argument0=100027 then{dbm(argument0.listpos)}
//dbm("set",argument0.listpos)

if !(argument0.parent=argument1) then{
if argument0.listpos>-1 then{
ds_list_delete(argument0.parent.children,argument0.listpos)
for(var i=argument0.listpos;
i<ds_list_size(argument0.parent.children);
i++){
var u=argument0.parent.children[| i];
//show_message(string(argument0.parent.object_index)+"#i: "+string(i))
u.listpos-=1}
}
//set new parent
var t=argument1;
argument0.parent=t
//sdbm("setting parent!",t,argument0)

if !ds_exists(t.children,ds_type_list) then{t.children=ds_list_create()}
ds_list_add(t.children,argument0.id)
argument0.listpos=ds_list_size(t.children)-1
with(t){
uiz_fix_Depth();
}
}
