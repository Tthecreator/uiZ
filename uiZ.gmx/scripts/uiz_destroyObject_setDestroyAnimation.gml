///uiz_destroyObject_setDestroyAnimation(instanceid, xFunction, yFunction, alphaFunction, time)
/*
Can change the results that occur when using the function uiz_destroyObject_animation_default(id) By default if this function isn't called on an object the animation will be like: uiz_destroyObject_setDestroyAnimation(window,uiz_straight,uiz_straight,uiz_straight,0.5);
-id: The instance id of an object.
-destroyxfunction: The animation for the width when the object is being destroyed.
-destroyyfunction: The animation for the height when the object is being destroyed.
-destroyafunction: The animation for the alpha when the object is being destroyed.
-destroyspeed: The time in seconds the animation for destroying the object.
*/
with(argument0){
destroyxfunction=argument1
destroyyfunction=argument2
destroyafunction=argument3
destroyspeed=argument4
}

