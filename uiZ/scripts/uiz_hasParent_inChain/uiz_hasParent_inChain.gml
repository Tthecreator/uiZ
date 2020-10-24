/// @description uiz_hasParent_inChain(id, findParent)
/// @param id
/// @param  findParent
function uiz_hasParent_inChain(argument0, argument1) {
	/*
	Checks the objects parent AND the grandparents (the parents parents).
	Retruns a bool value whether the specified parent is in the parents chain.
	0-id: The object from where to search. This should be a game maker instance id.
	1-parent: The object for who to search. This should be a game maker instance id. 
	*/
	var object=argument0
	while(true){
	object=object.parent
	if object.object_index=obj_uiZ_controller then{return false;}
	if object=argument1 then{return true;}
	}



}
