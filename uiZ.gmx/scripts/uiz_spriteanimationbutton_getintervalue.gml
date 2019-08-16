///uiz_spriteanimationbutton_getintervalue(instance id)
/*Gives a interpolated but not animated value of the state of a spriteanimationbutton, ranging from 0 to 1.
Could be useful if you want to open up a menu at the same time as the button is doing its animation.
*/
with(argument0){
if (value=true or (value=oldvalue and value=false and (linearvalue>0 and linearvalue<1))) and !(value=oldvalue and value=true and (linearvalue>0 and linearvalue<1)) then{
if linearvalue=0 then{return 1;}
return linearvalue;
}else{
if linearvalue=0 then{return 0;}
return 1-linearvalue;
}

}
