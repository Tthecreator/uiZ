/// @description uiz_treelist_item_set_sprite(treelist, itemHandle, sprite)
/// @param treelist The instanceid of the treelist to update
/// @param itemHandle The item within the treelist to change
/// @param sprite What sprite to give the treelist item
function uiz_treelist_item_set_sprite(argument0, argument1, argument2) {
	//sets the sprite drawn on this itemHandle
	//set to -1 for no sprite
	var sprPart = ((argument0.spriteList[|argument1]>>7)<<7);
	argument0.spriteList[|argument1] += -sprPart + (argument2 << 7);
}
