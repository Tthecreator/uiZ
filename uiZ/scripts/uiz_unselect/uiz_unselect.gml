/// @description uiz_unselect(id)
/// @param id
function uiz_unselect(argument0) {
	with(argument0){
	if selected=1 then{
	selected=0
	global.mousefrozen=0
	}
	}



}
