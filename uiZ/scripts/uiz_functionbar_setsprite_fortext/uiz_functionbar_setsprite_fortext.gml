/// @description uiz_functionbar_setsprite_fortext(barid,name,sprite)
/// @param barid
/// @param name
/// @param sprite
function uiz_functionbar_setsprite_fortext(argument0, argument1, argument2) {
	/*
	Searches for an item in a obj_uiZ_functionbar object using the text associated with that item.
	Once it found an item it sets the sprite to the new specified one. 
	*/
	with(argument0){
	var item=uiz_searchInArray(text,items,argument1)
	if item>-1 then{sprite[item]=argument2}
	}



}
