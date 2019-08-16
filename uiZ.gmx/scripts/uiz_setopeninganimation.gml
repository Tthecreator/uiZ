///uiz_setopeninganimation(id,xfunction,yfunction,alphafunciton,speed)
/*
If called right after creation of an object, it will give that object a nice creation animation.
Overrides any other settings or changes made to the animations for destroying the object.
*/
with (argument0){
if destroy=0 then{destroy=-1}
updatenextstep=1
fixedthisstep=0
destroyxfunction=argument1
destroyyfunction=argument2
destroyafunction=argument3
destroyspeed=argument4
oldx=x
oldy=y
oldw=width
oldh=height
olda=head_alpha
}
uiz_fixgeneralpos(argument0)
