///uiz_fixontainin(object,tograndchildren,containin)
var p=argument0;
var l=p.children;
if ds_exists(l,ds_type_list) then{
var sz=ds_list_size(l)
for(var i=0;i<sz;i++){
var w=l[| i];
w.containin=argument2
if argument1=1 then{
uiz_fixcontainin(w,1,argument2)
}
}
}
