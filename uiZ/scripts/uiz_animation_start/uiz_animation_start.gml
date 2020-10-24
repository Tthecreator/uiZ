/// @description uiz_animation_start(id)
/// @param id
function uiz_animation_start(argument0) {
	var l=obj_uiZ_controller.uiz_animationlist
	if argument0.inanimation=false then{ds_list_add(l,argument0)}
	argument0.inanimation=true;
	argument0.function_count=0;



}
