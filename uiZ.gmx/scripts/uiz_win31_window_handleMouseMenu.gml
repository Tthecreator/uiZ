//run switch for every element in the mouse menu
sdbm("handling mouse menu for",argument0,argument1)
switch(argument0.selected){
case 0:
//Restore
break;
case 1:
//Move
break;
case 2:
//Size
break;
case 3:
//Minimize
with(argument1){uiz_window_switchminimize()}
break;
case 4:
//Maximize
with(argument1){uiz_window_switchmaximize()}
break;
case 5:
//Close
uiz_destroyobject_animation_default(argument1)
break;
case 6:
//Switch to
break;
}
