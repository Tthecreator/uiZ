/// @description uiz_frameset_setMinimumSize(dividerAnchorId, position, minSize, minSizeType)
/// @param dividerAnchorId
/// @param  position
/// @param  minSize
/// @param  minSizeType
function uiz_frameset_setMinimumSize(argument0, argument1, argument2, argument3) {
	//Set the minimum size for a given cell.
	argument0.minSize[argument1]=argument2;
	argument0.minSizeType[argument1]=argument3;



}
