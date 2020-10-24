/// @description uiz_animation_bakeArgument(animation, argument)
/// @param animation
/// @param  argument
function uiz_animation_bakeArgument(argument0, argument1) {
	var a=floor(abs(argument1))+1
	//return argument0+a/(10^uiz_getnumbers(a))
	if a<=1 then{return argument0}else{
	return argument0+1/a
	}



}
