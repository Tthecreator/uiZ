///uiz_list_addinsert(list,pos,value)
if argument1>=ds_list_size(argument0) then{
argument0[| argument1]=argument2
}else{
ds_list_insert(argument0,argument1,argument2)
}
