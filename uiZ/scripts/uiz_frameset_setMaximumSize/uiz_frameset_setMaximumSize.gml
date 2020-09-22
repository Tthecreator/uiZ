/// @description uiz_frameset_setMaximumSize(dividerAnchorId, position, maxSize, maxSizeType)
/// @param dividerAnchorId
/// @param  position
/// @param  maxSize
/// @param  maxSizeType
function uiz_frameset_setMaximumSize(argument0, argument1, argument2, argument3) {
	//Set the maximum size for a given cell.
	argument0.maxSize[argument1]=argument2;
	argument0.maxSizeType[argument1]=argument3;



}
