/// @description uiz_countObjects(inObject, lookFor, lookInside, lookInsideLookFor)
/// @param inObject
/// @param  lookFor
/// @param  lookInside
/// @param  lookInsideLookFor
function uiz_countObjects(argument0, argument1, argument2, argument3) {
	/*
	objects for a given type inside another object.
	If you want to do a global search, you can use "obj_uiZ_controller.id" as the first argument (no quote marks).
	0-inobject: In what object to search.
	1-lookfor: What object to look for and count.
	2-lookinside: If the script should seek inside other objects which are children of the object specified at argument 0.
	3-lookinsidelookfor: If the script should look inside the objects given at argument 0.


	Alternatives If you just want to count the amount of instances globally, with the lookinside and lookinsidelookfor arguments set to true, you can also use instance_number(obj); 

	*/
	var count=0;
	with(argument0){
	if ds_exists(children,ds_type_list) then{
	sz=ds_list_size(children)
	for(i=0;i<sz;i++){
	var ch=children[| i]
	if ch.object_index=argument1 then{count++}
	if (argument3=true and ch.object_index=argument1) or (argument2=true and ch.object_index!=argument1) then{
	count+=uiz_countObjects(ch,argument1,argument2,argument3)
	}

	}
	}
	}
	return count;



}
