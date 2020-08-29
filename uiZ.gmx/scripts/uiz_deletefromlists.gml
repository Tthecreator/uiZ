///uiz_deleteFromLists(position,list1,list2.......)
/*
Calls the ds_list_delete function on multiple lists at the specified position.
Takes as many lists as game maker supports arguments.*/
for(var i=1;i<argument_count;i++){
ds_list_delete(argument[i],argument[0])
}
