///uiz_draw_spritebutton_state(x1,y1,x2,y2,color,oncolor,incolor,sprite,alpha,state)
/*
Draws a quick button without any text, at specified position.
Color is the normal color
Oncolor is the color of the button when the mouse is over it.
Incolor is the color of the button when the mouse is pressing it.
Returns nothing, you handle the mouse yourself using input.
Only works for uiZ object, as it uses some code to check some things.
uses image index 0 when mouse is not over; 1 when mouse is over; 2 when mouse is pressing the button.
State can be a number from 0 to 2 and are equivalent to the following options on the normal uiz_draw_spritebutton:
0: normal state
1: mouse over state
2: mouse in state

*/
switch(argument9){
case 0:
var color=argument4
var spr=0;
break;
case 1:
var color=argument5
var spr=1;
break;
case 2:
var spr=2;
var color=argument6
break;
}
draw_sprite_ext(argument7,spr,argument0,argument1,(argument2-argument0)/sprite_get_width(argument7),(argument3-argument1)/sprite_get_height(argument7),0,color,argument8)
