///uiz_animation_setOpeningAnimation(id,xfunction,yfunction,alphafunction,speed,changeDestroy)
/*
If called right after creation of an object, it will give that object a nice creation animation.
destroy: Set to true to apply the same animation to the destruction of the object. To do that call uiz_destroyObject_animation_default to destroying the object with the reversed opening animation.
*/
with (argument0){
function_x=argument1
function_y=argument2
function_a=argument3
function_time=argument4
if argument5 then{
destroyxfunction=argument1
destroyyfunction=argument2
destroyafunction=argument3
destroyspeed=argument4
}
uiz_fixgeneralpos(argument0);
oldx=x + width*spx
oldy=y + height*spy
oldw = 0;
oldh = 0;
olda = 0;
function_count=0;
}
uiz_animation_start(argument0);
uiz_fixgeneralpos(argument0);
