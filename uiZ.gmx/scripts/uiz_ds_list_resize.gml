///uiz_ds_list_resize(dslist,newsize,addvalue)
/*
Takes a ds list and changes the size of the list by either deleting (if newsizeds_list_size) or doing nothing (if newsize=ds_list_size).
Whenever newsize>ds_list_size new values will be added to the list, but you will need to specify with what value these spaces should be filled in. This is argument2, addvalue.
Returns whether this script resized anything (true) or if the list were unchanged because the sized already match (false).
*/
var sz=ds_list_size(argument0)
var newsize=argument1
if newsize<sz then{
for(var i=sz-1;i>=sz-newsize;i--){
ds_list_delete(argument0,i)
}
return true;
}else{
if newsize>sz then{
repeat(newsize-sz){
ds_list_add(argument0,argument2)
}
return true;}
return false;
}
