///uiz_treelist_drawEntry(item)
var i = argument0;
var h = fontHeight;
var ih = argument1;
var hi = ih*h;

var sprl = spriteList[|i];
var sprite = sprl>>7;
var img = sprl mod 7;
var name = textList[|i];
var miscl = indentEnabledAndBoxList[|i];
var nextPosition = miscl >> 8;
var indent = (miscl >> 3) mod 32;
var enabled = (miscl >> 2) mod 2;
var boxState = miscl mod 4;


sdbm("drawing with indent",hi,indent)
var boxadd=indent*h;
if boxState!=uiz_treelist_boxState_noBox then{
    //we need to draw a box
    draw_sprite_ext(boxsprite, 0, rx+boxadd , ry + hi, h / sprite_get_width(boxsprite), h / sprite_get_height(boxsprite), 0, boxcolor, alpha)
}
boxadd += h+margin;
if enabled {
    if sprite!=-1 and sprite_exists(sprite) then{//don't draw sprite
        draw_sprite_ext(sprite,img,rx+boxadd,ry + hi,h / sprite_get_width(sprite),h / sprite_get_height(sprite),0,c_white,alpha)
        boxadd+=h+margin;   
    }
    draw_text(rx+boxadd,ry + hi,name);
}

//return i+1;
return nextPosition;
