///uiz_list_getadd(list,data)
//find the pos of a value in a ds_list and if it can't find the value, it will add it instead.
var pos=ds_list_find_index(argument0,argument1)
if pos=-1 then{
pos=ds_list_size(argument0)
ds_list_add(argument0,argument1)
}
return pos;
