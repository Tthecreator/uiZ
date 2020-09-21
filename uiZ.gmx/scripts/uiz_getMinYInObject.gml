///uiz_getMinYInObject(instance id)
var p=argument0;
var l=p.children;
if ds_exists(l,ds_type_list) then{
var sz=ds_list_size(l)
var ma=0;
for(var i=0;i<sz;i++){
var w=l[| i]
if w.ry<ma then{ma=w.ry}
}
return ma-p.addy;
}
return 0;
