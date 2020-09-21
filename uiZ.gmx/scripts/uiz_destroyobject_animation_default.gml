///uiz_destroyObject_animation_default(id)
/*
Safely destroys an uiZ object, but does it with style.
It is similar in function as uiz_destroyObject_animation, but it uses a default animation of uiz_straight over a timespan of half a second.
You can change the destroy animation by using the function uiz_destroyObject_setDestroyAnimation.
By default this would be: uiz_destroyObject_setDestroyAnimation(window,uiz_straight,uiz_straight,uiz_straight,0.5);
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
function_x=destroyxfunction
function_y=destroyyfunction
function_w=destroyxfunction
function_h=destroyyfunction
function_a=destroyafunction
function_time=destroyspeed
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
