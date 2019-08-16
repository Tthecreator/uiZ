//var bkspr,bkcol;
var img=0;
/*
Utilizes the sprite_, sprite_texturemode and color_ variables.
This takes a sprite containing 1 subimage and draws it into one square by rotating and drawing the sprite 4 times.
But when the sprite isn't a perfect square, the proportion of the corner pieces is kept 1:1 and the corners are connected through another sprite (subimage 1) which will draw accordingly to the sprite_texturemode .
sprite_texturemode doesn't affect the corners.
A sprite should be build up in this way:
-image 0: the bottom-right piece. (Will be rotated)
-image 1: the top straight piece.
-image 2: the left straight piece.
The sprite should also be a square. (The width and height should be the same) 
*/
/*
switch(argument0){
case 0:
var bkspr=sprite_normal;
var bkcol=color_normal;
var bkmar=margin_normal;
break;
case 1:
if sprite_over>-1 then{bkspr=sprite_over;}else{bkspr=sprite_normal; if sprite_get_number(sprite_normal)>=6 then{img=3;}}
if color_over>-1 then{bkcol=color_over;}else{bkcol=color_normal;}
break;
case 2:
if sprite_in>-1 then{bkspr=sprite_in; }else{bkspr=sprite_normal; if sprite_get_number(sprite_normal)>=9 then{img=6;}}
if color_in>-1 then{bkcol=color_in;}else{bkcol=color_normal;}
break;
case 3:
if sprite_out>-1 then{bkspr=sprite_out;}else{bkspr=sprite_normal; if sprite_get_number(sprite_normal)>=12 then{img=9;}}
if color_out>-1 then{bkcol=color_out;}else{bkcol=color_normal;}
break;
}
*/
if sprite_exists(bkspr) then{
var scx=width/(sprite_get_width(bkspr))/2;
var scy=height/(sprite_get_height(bkspr))/2;
/*
//left top
draw_sprite_ext(bkspr,0,rx,ry,scx,scy,180,bkcol,alpha)
//right top
draw_sprite_ext(bkspr,0,rx+width/2,ry,scy,scx,270,bkcol,alpha)
//left bottom
draw_sprite_ext(bkspr,0,rx,ry+height/2,scx,scy,0,bkcol,alpha)
//right bottom
draw_sprite_ext(bkspr,0,rx+width/2,ry+height/2,scy,scx,90,bkcol,alpha)
*/


//left top
draw_sprite_ext(bkspr,0,rx+width/2,ry+height/2,scx,scy,180,bkcol,alpha)
//right top
draw_sprite_ext(bkspr,0,rx+width/2,ry+height/2,scy,scx,270,bkcol,alpha)
//left bottom
draw_sprite_ext(bkspr,0,rx+width/2,ry+height/2,scx,scy,0,bkcol,alpha)
//right bottom
draw_sprite_ext(bkspr,0,rx+width/2,ry+height/2,scy,scx,90,bkcol,alpha)


}

