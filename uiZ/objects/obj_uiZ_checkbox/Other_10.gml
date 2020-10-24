if uiz_cntn() then{
//draw_sprite_ext(sprite,kmouseover+spraddto,rx,ry,width/sprite_get_width(sprite),height/sprite_get_height(sprite),0,color,image_alpha)
//draw_square(rx,ry,rlx,rly,c,alpha)

uiz_back()
/*
if outline=1 then{
    switch(kmouseover){
        case 0: draw_set_color(outlinecolor) break;
        case 1: draw_set_color(outlineoncolor) break;
        default: draw_set_color(outlineincolor) break;
    }
    draw_set_alpha(outlinealpha)
    draw_rectangle(rx-1,ry-1,rlx-1,rly-1,1)
    
    draw_set_alpha(1)
}
*/
if value=1 then{
var x1=rx+margin
var x2=rlx-margin
var y1=ry+margin
var y2=rly-margin
var w=(x2-x1)/5
var h=(y2-y1)/5
if sprite=-1 then{
//draw the check vertex
switch(kmouseover){
case 0: draw_set_color(checkcolor) break;
case 1: draw_set_color(checkoncolor) break;
default: draw_set_color(checkincolor) break;
}
draw_primitive_begin(pr_trianglestrip)
draw_vertex(x1,y1+h*3)
draw_vertex(x1+w,y1+h*2)
draw_vertex(x1+w*2,y2)
draw_vertex(x1+w*2,y1+h*3)
draw_vertex(x2,y1+h)
draw_vertex(x2-w,y1)
draw_primitive_end()
}
draw_set_color(c_white)
}else{
if sprite_exists(sprite) then{
draw_sprite_ext(sprite,spriteimg,x1,x2,(width-margin*2)/sprite_get_width(sprite),(height-margin*2)/sprite_get_height(sprite),0,uiz_km_retval(spritecolor,spriteoncolor,spriteincolor),alpha)
}
}
uiz_containend()
}



/* */
/*  */
