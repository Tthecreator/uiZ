///uiz_functionbar_setmenu_fortext(barid,name,script)
/*
Searches for an item in a obj_uiZ_functionbar object using the text associated with that item.
Once it found an item it sets the menu script value to the new specified one. 
*/
with(argument0){
var item=uiz_searchinarray(text,items,argument1)
if item>-1 then{menu[item]=argument2}
}
