///uiz_des_getdesname(objectnamestring)
//if object_exists(asset_get_index(argument0)) then{
var str=argument0
if string_copy(argument0,1,8)="obj_uiZ_" then{
str=string_copy(argument0,9,string_length(argument0)-8)
}else{
if string_copy(argument0,1,4)="obj_" then{
str=string_copy(argument0,5,string_length(argument0)-4)
}else{
var sc=string_copy(argument0,1,2)
if sc="o_" or sc="O_" then{
str=string_copy(argument0,3,string_length(argument0)-2)
}
}
}
return "obj_uiz_des_"+str;
//}else{return "";}
