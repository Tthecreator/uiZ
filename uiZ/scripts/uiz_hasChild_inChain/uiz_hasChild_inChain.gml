/// @description uiz_hasChild_inChain(id, child)
/// @param id
/// @param  child
function uiz_hasChild_inChain(argument0, argument1) {
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




}
