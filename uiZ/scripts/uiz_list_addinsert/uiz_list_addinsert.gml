/// @description uiz_list_addinsert(list,pos,value)
/// @param list
/// @param pos
/// @param value
function uiz_list_addinsert(argument0, argument1, argument2) {
	if argument1>=ds_list_size(argument0) then{
	argument0[| argument1]=argument2
	}else{
	ds_list_insert(argument0,argument1,argument2)
	}



}
