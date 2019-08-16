///uiz_animation_getfunction_twoway(factor from 0 to 1,graphtype_oneway, graphtype_otherway)
//this function first using an animation to interpolate between 0 and 1. (factor<.5)
//after it has done that it will interpolate back to 0 using another animation. (factor>.5)
if(argument0<0.5){
    return uiz_animation_getfunction(argument0*2,argument1);
}else{
    return 1-uiz_animation_getfunction((argument0-.5)*2,argument2);
}
