/*
Safely destroys uiZ objects.
Deletes ALL CHILDREN and GRANDCHILDREN of the object given in argument0, but not that object itself.
*/
var p=argument0;
var l=p.children;
if ds_exists(l,ds_type_list) then{
var sz=ds_list_size(l)
for(var i=0;i<sz;i++){
//var w=l[| i];
var w=l[| 0];
//dbm(w)
uiz_destroyObject(w)
}
}
