/// @description uiz_destroyObject_animation(instanceid, xfunction, yfunction, alphafunction, time)
/// @param instanceid
/// @param  xfunction
/// @param  yfunction
/// @param  alphafunction
/// @param  time
function uiz_destroyObject_animation(argument0, argument1, argument2, argument3, argument4) {
	/*
	Safely destroys an uiZ object, but does it with style.
	It is important you use this script instead of the normal instance_destroy() script, as this script removes the reference to this object from its parent.
	If the normal instance_destroy script is called, crashes are likely to occur.
	Also deletes ALL CHILDREN and GRANDCHILDREN of the object being deleted.
	If you don't want everything to be deleted you can use uiz_children_adopt() to place the children somewhere else.
	The object is still accessible until the animation is over, then it will be destroyed.
	For information on how the animation part works, see "uiz_animation_setOpeningAnimation" and "Animations in general".
	*/
	with(argument0){
	//if destroy=0 then{destroy=1}
	//keepupdating=1
	destroy=true;
	function_x=argument1
	function_y=argument2
	function_w=argument1
	function_h=argument2
	function_a=argument3
	function_time=argument4
	oldx=x
	oldy=y
	olda=head_alpha
	oldw=width
	oldh=height
	newx=width/2;
	newy=height/2;
	neww=-width;
	newh=-height;
	newa=-head_alpha;
	function_count=0;
	}
	ds_list_add(obj_uiZ_controller.uiz_animationlist,argument0)



}
