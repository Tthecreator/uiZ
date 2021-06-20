/// @description uiz_treelist_item_set_spriteImg(treelist, itemHandle, spriteImg)
/// @param treelist The instanceid of the treelist to update
/// @param itemHandle The item within the treelist to change
/// @param spriteImg What spriteImg to give the treelist item
function uiz_treelist_item_set_spriteImg(argument0, argument1, argument2) {
	//sets the sprite image index drawn on this itemHandle
	argument0.spriteList[|argument1] += -(argument0.spriteList[|argument1] mod 128) + argument2;
}
