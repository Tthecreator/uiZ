#define uiz_haschild
///uiz_haschild(id,child)
//checks weather an object has a child.
//Also checks for grandchildren.
//returns true or false.
//create a list that helps prevent dubble parenting
if instance_exists(argument1) then{
var slist=ds_list_create()
//get first object

return uiz_haschild_processing(slist,argument0,argument1);

ds_list_destroy(slist)
}
return 0;

#define uiz_haschild_processing
///uiz_haschild_processing(list,id,child)
//is a script that helps uiz_haschild() you should not use this script!
var slist=argument0
var list=argument1.children;
if instance_exists(argument1) and list>-1 and ds_exists(list,ds_type_list) then{
//check if already processed.
if ds_list_find_index(slist,argument1)>-1 then{return 0;}
ds_list_add(slist,argument1)
//scroll trough list to find value
var sz=ds_list_size(list)
for(var i=0;i<sz;i++){
if list[| i]=argument2 then{return 1;}
}
//nothing found, go trough children
for(var i=0;i<sz;i++){
if uiz_haschild_processing(argument0,list[| i],argument2)=1 then{return 1;}
}
}
return 0;
//ds_list_destroy(slist)