/// @description uiz_drawtextlines_setmargins(instanceid,marginw[3],marginh[0])
/// @param instanceid
/// @param marginw[3]
/// @param marginh[0]
function uiz_drawtextlines_setmargins(argument0, argument1, argument2) {
	with(argument0){
	marginw=argument1;
	marginh=argument2;
	drawtext=uiz_getTextLines_contained(text,width-marginw*2,height-marginh*2)
	}



}
