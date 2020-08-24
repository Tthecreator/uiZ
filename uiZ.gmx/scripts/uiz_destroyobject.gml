///uiz_destroyObject(id)
/*
Safely destroys an uiZ object.
It is important you use this script instead of the normal instance_destroy() script, as this script removes the reference to this object from its parent.
If the normal instance_destroy script is called, crashes are likely to occur.
Also deletes ALL CHILDREN and GRANDCHILDREN of the object being deleted.
If you don't want everything to be deleted you can use uiz_children_adopt() to place the children somewhere else.
*/
var p=argument0;
var l=p.children;
if ds_exists(l,ds_type_list) then{
var sz=ds_list_size(l)
for(var i=0;i<sz;i++){
var w=l[| 0];
uiz_destroyObject(w)
}
}
with(p){
ds_list_delete(parent.children,listpos)
for(var i=listpos;
i<ds_list_size(parent.children);
i++){
var u=parent.children[| i];
u.listpos-=1}
//uiz_endobject()
instance_destroy()}
