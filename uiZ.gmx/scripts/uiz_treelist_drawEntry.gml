///uiz_treelist_drawEntry(item)
var i = argument0;
var h = fontHeight;
var hi = argument1;
var srlx = argument2;

var sprl = spriteList[|i];
var sprite = sprl>>7;
var img = sprl mod 7;
var name = textList[|i];
var miscl = indentEnabledAndBoxList[|i];
//var nextPosition = miscl >> 8;
var nextPosition = nextItemList[|i];
var indent = miscl >> 3;//(miscl >> 3) mod 32;
var enabled = (miscl >> 2) mod 2;
var boxState = miscl mod 4;

if currentSelectionList=i then{
    if kmouseover=uiz_mouseclick then{
        draw_square(rx,ry + hi,srlx,ry+ hi+h,backselcolor,backselalpha);
        draw_set_color(textselcolor);
        draw_set_alpha(1);
    }else{
        draw_square(rx,ry + hi,srlx,ry+ hi+h,backoncolor,backonalpha);
        draw_set_color(textoncolor);
        draw_set_alpha(1);
    }
}else{
    draw_square(rx,ry + hi,srlx,ry+ hi+h,backcolor,backalpha);
    draw_set_color(textcolor);
    draw_set_alpha(1);
}

//sdbm("drawing ",i,nextPosition,indent,enabled,boxState);
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

//if currentSelectionList=i then{draw_set_color(textcolor);draw_set_alpha(1);} //reset text color for next item
//return i+1;
return nextPosition;
