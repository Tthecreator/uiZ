///uiz_list_getadd(list,data)
//find the pos of a value in a ds_list and if it can't find the value, it will add it instead.
//sdbm("4.11.2",argument0,argument1)
var pos=ds_list_find_index(argument0,argument1)
//sdbm("4.11.3")
if pos=-1 then{
//sdbm("4.11.4")
pos=ds_list_size(argument0)
//sdbm("4.11.5")
ds_list_add(argument0,argument1)
//sdbm("4.11.6")
}
//sdbm("4.11.7")
return pos;
