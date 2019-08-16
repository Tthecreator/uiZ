///uiz_functionbar_setenabled_fortext(barid,name,bool enabled)
/*Searches for an item in a obj_uiZ_functionbar object using the text associated with that item.
Once it found an item it sets the enabled value to the new specified one. 
*/
with(argument0){
var item=uiz_searchinarray(text,items,argument1)
if item>-1 then{enabled[item]=argument2}
}
