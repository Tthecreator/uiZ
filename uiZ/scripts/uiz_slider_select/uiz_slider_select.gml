/// @description uiz_slider_select(id)
/// @param id
function uiz_slider_select(argument0) {
	with(argument0){
	if global.mousefrozen=0 and selected=0 then{
	selected=1
	global.mousefrozen=1
	//snappoint=clamp(uiz_getmouse_x()-rx+(width-slidersz)*invalue,0,slidersz)
	snappoint=clamp(uiz_getmouse_x()-(rx+(width-slidersz)*invalue),0,slidersz)
	}
	}



}
