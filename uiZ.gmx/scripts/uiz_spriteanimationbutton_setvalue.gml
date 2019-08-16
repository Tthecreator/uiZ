///uiz_spriteanimationbutton_setvalue(instance id,linearvalue,tovalue,update)
/*
Takes a spriteanimationbutton and sets the value of that button, with ability to have to set it somewhere in the middle of an animation.
0-instance id: The instance id of a spriteanimationbutton.
1-linearvalue: A value from 0 to 1 showing how far the button should be in it's animation. Set to 0 if you want the entire animation to be ran and set to 1 if you want no animation.
2-tovalue: The new value that should be used and that the animation has to work to. Making this -1 will use whatever the button is doing at that moment.
3-update: Whether to send out an "update" signal. Setting this to false doesn't set update=true, while setting this to true does.
*/

with(argument0){
wait=true
linearvalue=argument1;
//if linearvalue=1 then{sdbm("linearvalue=1")}
if argument2>-1 then{value=argument2


}

oldvalue=!value
if value=true then{
intervalue=uiz_animation_getfunction(linearvalue,animationin)
img=round(endframe*intervalue)
}else{
intervalue=uiz_animation_getfunction(linearvalue,animationout)
img=endframe+round((sprite_get_number(sprite)-endframe)*intervalue)
}
if linearvalue=1 then{oldvalue=value; linearvalue=0;}
if argument3=true then{update=true;}


if argument2>-1 and linearvalue=1 then{linearvalue=0;}
}
