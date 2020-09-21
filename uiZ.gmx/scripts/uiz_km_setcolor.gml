///uiz_km_setColor(color, onColor, inColor)
/*
Requires you to have kmouseover setup in that object, see "Mouse in general" and/or check your objects step event.
Sets the color to a different value for when your mouse is over an object, and when it clicks an object, and it has a default value for when the mouse isn't over the object
Can save some space in your scripts/objects.
This script calls draw_set_color() and the value it uses depends on the arguments and the state of the mouse.
*/
switch(kmouseover){
case 3: case 2: draw_set_color(argument2); break;
case 1: draw_set_color(argument1); break;
default: draw_set_color(argument0); break;
}
