/// @description uiz_treelist_item_get_sprite(treelist, itemHandle)
/// @param treelist
/// @param  itemHandle
function uiz_treelist_item_get_sprite(argument0, argument1) {
	//gets the sprite drawn on this itemHandle
	//returns -1 for no sprite
	return argument0.spriteList[|argument1]>>7;



}
