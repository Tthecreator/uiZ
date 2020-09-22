/// @description uiz_functionbar_settext_fortext(barid,name,string text)
/// @param barid
/// @param name
/// @param string text
function uiz_functionbar_settext_fortext(argument0, argument1, argument2) {
	/*
	Searches for an item in a obj_uiZ_functionbar object using the text associated with that item.
	Once it found an item it sets the color value to the new specified one.
	WATCH OUT with this function as it can overwrite the text and thus make the item unfindable again.
	*/
	with(argument0){
	var item=uiz_searchInArray(text,items,argument1)
	if item>-1 then{text[item]=argument2}
	}



}
