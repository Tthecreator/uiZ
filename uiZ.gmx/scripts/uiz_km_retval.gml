///uiz_km_retval(defaultvalue,mouseonvalue,mouseovervalue)
/*
Requires you to have kmouseover setup in that object, see "Mouse in general" and/or check your objects step event.
Returns a different value for when your mouse is over an object, and when it clicks an object, and it has a default value for when the mouse isn't over the object
Can save some space in your scripts/objects.
*/
//sdbm(kmouseover)
switch(kmouseover){
case 3: case 2: return argument2; break;
case 1: return argument1; break;
default: return argument0; break;
}
