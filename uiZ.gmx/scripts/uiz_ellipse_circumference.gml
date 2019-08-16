///uiz_ellipse_circumference(widthradius,heightradius)
//takes a the width and height radius of an ellipse (an oval, a stretched circle)
//the width and height radiusses are just the width of the ellipse divided by 2.
var a=argument0;
var b=argument1;
var ambs=sqr(a-b)
var apbs=sqr(a+b)
return pi*(a+b)*(3*(ambs/(apbs*(sqrt(-3*(ambs/apbs)+4)+10)))+1)
