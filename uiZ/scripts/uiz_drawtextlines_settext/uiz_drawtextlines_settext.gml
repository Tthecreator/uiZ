/// @description uiz_drawtextlines_settext(instanceid,text[""])
/// @param instanceid
/// @param text[""]
function uiz_drawtextlines_settext(argument0, argument1) {
	with(argument0){
	text=string(argument1);
	drawtext=uiz_getTextLines_contained(text,width-marginw*2,height-marginh*2)
	}



}
