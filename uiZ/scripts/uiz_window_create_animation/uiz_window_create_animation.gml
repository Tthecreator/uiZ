/// @description uiz_window_create_animation(width, widthtype, height, heighttype, xfunction, yfunction, alphafunction, animationtime) -returns windowid
/// @param width
/// @param  widthtype
/// @param  height
/// @param  heighttype
/// @param  xfunction
/// @param  yfunction
/// @param  alphafunction
/// @param  animationtime
function uiz_window_create_animation(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	/*
	Creates a window holder object and returns the id of that object.
	See "windows in general" for more information on how to handle windows.
	Takes arguments for width and height, and the types of those width and heights.
	What valuetype does is equivalent to how the variable "posval w/h type" works, but this one only supports px, dp and fc.
	For information on how the animation part works, see "uiz_animation_setOpeningAnimation" and "Animations in general".
	*/
	var w=uiz_window_create(argument0,argument1,argument2,argument3);
	uiz_animation_setOpeningAnimation(w,argument4,argument5,argument6,argument7,false);
	uiz_fixwindowpos(w);
	return w;



}
