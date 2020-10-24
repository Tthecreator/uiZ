/// @description uiz_menu_scroll_set(towho,value)
/// @param towho
/// @param value
function uiz_menu_scroll_set(argument0, argument1) {
	with(argument0){
	scrolledlast=1
	if scrollway=uiz_horizontal then{
	addx=-argument1
	}else{
	addy=-argument1
	}
	uiz_fixChildren(id,1)
	}




}
