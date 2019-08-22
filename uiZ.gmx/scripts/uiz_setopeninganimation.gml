///uiz_setopeninganimation(id,xfunction,yfunction,alphafunciton,speed,changeDestroy)
/*
If called right after creation of an object, it will give that object a nice creation animation.
destroy: Set to true to apply the same animation to the destruction of the object. To do that call uiz_destroyobject_animation_default to destroying the object with the reversed opening animation.
*/
with (argument0){
if destroy=0 then{destroy=-1}
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
oldx=x
oldy=y
oldw=width
oldh=height
olda=head_alpha
}
uiz_fixgeneralpos(argument0)
