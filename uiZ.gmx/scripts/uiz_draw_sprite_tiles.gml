///uiz_draw_sprite_tiles(sprite,img,x1,y1,x2,y2,repeatx,repeaty,color,alpha,outerEdgeX,outerEdgeY)
/*
A function drawing a sprite an x number of times on a square/rectangle from point (x1,y1) to (x2,y2). 
Repeatx and repeaty must be numbers above 0, but can be a decimal number.
This means you can for example give repeatx a value of 2.5 and it will draw the sprite 2 times, and than another halve of that sprite will be added.
It is recommended that you set texture_set_repeat to false, else artifacts may occur. 
The outerEdge can be set to any other value then 0 when you manually add a pixel border around your sprite. This is to prevent your sprite from blending in empty alpha
*/
//globalvar deb;
var repx=floor(argument6)
var repy=floor(argument7)
var oprepx=frac(argument6)
var oprepy=frac(argument7)
var x1=round(min(argument2,argument4));
var y1=round(min(argument3,argument5));
var x2=round(max(argument2,argument4));
var y2=round(max(argument3,argument5));
var width=x2-x1;
var height=y2-y1;
var sw=width/argument6
var sh=height/argument7
var outerEdgeX=argument10;
var outerEdgeY=argument11;
var sprw = sprite_get_width(argument0)-outerEdgeX*2;
var sprh = sprite_get_height(argument0)-outerEdgeY*2;
var scx=sw/sprw
var scy=sh/sprh
var osw=sprw*oprepx;
var osh=sprh*oprepy;
var osx=repx*sw+x1;
var osy=repy*sh+y1;
for(var i=0;i<repx;i++){
for(var e=0;e<repy;e++){
//draw normally without half sprites
//draw_sprite_ext(argument0,argument1,x1+sw*i,y1+sh*e,scx,scy,0,argument8,argument9)
draw_sprite_general(argument0,argument1,outerEdgeX,outerEdgeY,sprw,sprh,x1+sw*i,y1+sh*e,scx,scy,0,argument8,argument8,argument8,argument8,argument9)
/*
if deb {
sdbm("draw: ",x1+sw*i,y1+sh*e,scx,scy);
draw_set_color(c_red)

draw_rectangle(x1+sw*i,y1+sh*e,x1+sw*(i+1),y1+sh*(e+1),true);}
*/
}

}
//draw_set_color(argument8)
//draw_set_alpha(argument9)
//check for half sprites on x
if oprepx>0 then{
for(var e=0;e<repy;e++){
draw_sprite_part_ext(argument0,argument1,outerEdgeX,outerEdgeY,osw,sprh,osx,y1+sh*e,scx,scy,argument8,argument9)
}
}

//check for half sprites on y
if oprepy>0 then{
for(var i=0;i<repx;i++){
draw_sprite_part_ext(argument0,argument1,outerEdgeX,outerEdgeY,sprw,osh,x1+sw*i,osy,scx,scy,argument8,argument9)
/*
if deb {
draw_set_color(c_red)
draw_rectangle(x1+sw*i,y1+sh*e,x1+sw*(i+1),y2,true);
}
*/
}
}


if oprepx>0 and oprepy>0 then{
draw_sprite_part_ext(argument0,argument1,outerEdgeX,outerEdgeY,osw,osh,osx,osy,scx,scy,argument8,argument9)
}
