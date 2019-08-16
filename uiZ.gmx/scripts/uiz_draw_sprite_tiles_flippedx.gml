///uiz_draw_sprite_tiles(sprite,img,x1,y1,x2,y2,repeatx,repeaty,color,alpha)
/*
Does the same as uiz_draw_sprite_tiles, but then flips the image in the x axis.
A function drawing a flipped sprite an x number of times on a square/rectangle from point (x1,y1) to (x2,y2). 
Repeatx and repeaty must be numbers above 0, but can be a decimal number.
This means you can for example give repeatx a value of 2.5 and it will draw the sprite 2 times, and than another halve of that sprite will be added.
It is recommended that you set texture_set_repeat to false, else artifacts may occur. 
*/
var repx=floor(argument6)
var repy=floor(argument7)
var oprepx=frac(argument6)
var oprepy=frac(argument7)
var x1=min(argument2,argument4);
var y1=min(argument3,argument5);
var x2=max(argument2,argument4);
var y2=max(argument3,argument5);
var width=x2-x1;
var height=y2-y1;
var sw=width/argument6
var sh=height/argument7
var scx=sw/sprite_get_width(argument0)
var scy=sh/sprite_get_height(argument0)
var osw=sprite_get_width(argument0)*oprepx;
var osh=sprite_get_height(argument0)*oprepy;
var osx=argument6*sw+x1;
var osy=repy*sh+y1;
for(var i=0;i<repx;i++){
for(var e=0;e<repy;e++){
//draw normally without half sprites
draw_sprite_ext(argument0,argument1,x1+sw*(i+1),y1+sh*e,-scx,scy,0,argument8,argument9)
}
}
//draw_set_color(argument8)
//draw_set_alpha(argument9)
//check for half sprites on x
if oprepx>0 then{
for(var e=0;e<repy;e++){
draw_sprite_part_ext(argument0,argument1,sprite_get_width(argument0)-osw,0,osw,sprite_get_height(argument0),osx,y1+sh*e,-scx,scy,argument8,argument9)
}
}

//check for half sprites on y
if oprepy>0 then{
for(var i=0;i<repx;i++){
draw_sprite_part_ext(argument0,argument1,0,0,sprite_get_width(argument0),osh,x1+sw*(i+1),osy,-scx,scy,argument8,argument9)
}
}


if oprepx>0 and oprepy>0 then{
draw_sprite_part_ext(argument0,argument1,sprite_get_width(argument0)-osw,0,osw,osh,osx,osy,-scx,scy,argument8,argument9)
}
