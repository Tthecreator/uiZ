/// @description uiz_functionbar_setmenu_fortext(barid,name,script)
/// @param barid
/// @param name
/// @param script
function uiz_functionbar_setmenu_fortext(argument0, argument1, argument2) {
	/*
	Searches for an item in a obj_uiZ_functionbar object using the text associated with that item.
	Once it found an item it sets the menu script value to the new specified one. 
	*/
	with(argument0){
	var item=uiz_searchInArray(text,items,argument1)
	if item>-1 then{menu[item]=argument2}
	}



}
