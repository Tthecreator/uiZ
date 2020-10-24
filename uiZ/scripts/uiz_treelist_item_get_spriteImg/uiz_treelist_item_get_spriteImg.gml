/// @description uiz_treelist_item_get_spriteImg(treelist, itemHandle)
/// @param treelist
/// @param  itemHandle
function uiz_treelist_item_get_spriteImg(argument0, argument1) {
	//gets the sprite image index drawn on this itemHandle
	return argument0.spriteList[|argument1] mod 128;



}
