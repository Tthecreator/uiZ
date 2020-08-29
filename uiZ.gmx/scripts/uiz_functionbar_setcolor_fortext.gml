///uiz_functionbar_setcolor_fortext(barid,name,color)
/*
Searches for an item in a obj_uiZ_functionbar object using the text associated with that item.
Once it found an item it sets the color value to the new specified one. 
*/

with(argument0){
var item=uiz_searchInArray(text,items,argument1)
if item>-1 then{color[item]=argument2}
}
