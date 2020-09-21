///uiz_back_at(rx,ry,rlx,rly,[backmode])
/*

uiz_back_at(rx,ry,rlx,rly,[optional backmode]) 
For more information, see "Object backgrounds & stitching".
You should only use this function when making uiz objects yourself.
It takes no arguments, but looks for all the normal local background variables.
Draws the given background from (rx,ry) to (rlx,rly).
"backmode" is an optional argument, forcing the state that would be normally controller by the state of the mouse.

*/
var oldrx=rx;
var oldry=ry;
var oldrlx=rlx;
var oldrly=rly;
var oldwidth=width;
var oldheight=height;

rx=argument[0]
ry=argument[1]
rlx=argument[2]
rly=argument[3]
width=rlx-rx;
height=rly-ry;

if argument_count>=5 then{uiz_back(argument[4])}else{
uiz_back()}

rx=oldrx;
ry=oldry;
rlx=oldrlx;
rly=oldrly;
width=oldwidth;
height=oldheight;
