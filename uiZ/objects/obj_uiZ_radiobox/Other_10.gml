if uiz_cntn() then{
//draw_sprite_ext(sprite,kmouseover+spraddto,rx,ry,width/sprite_get_width(sprite),height/sprite_get_height(sprite),0,color,image_alpha)
//draw_square(rx,ry,rlx,rly,c,alpha)

uiz_back()


if value=1 then{
//draw the circle
uiz_km_setColor(checkcolor,checkoncolor,checkincolor)
if sprite=-1 then{
draw_circle(rx+width/2,ry+height/2,min(uiz_getposx_self(circlesize,circlesizetype),uiz_getposy_self(circlesize,circlesizetype))/2-margin,0)
}else{
if sprite_exists(sprite) then{
draw_sprite_ext(sprite,spriteimg,rx,ry,width/sprite_get_width(sprite),height/sprite_get_height(sprite),0,uiz_km_retval(spritecolor,spriteoncolor,spriteincolor),alpha)
}
}
//draw the outline
if outline=1 then{
//outline
uiz_km_setColor(outlinecolor,outlineoncolor,outlineincolor)
draw_set_alpha(outlinealpha*alpha)
draw_circle(rx+width/2,ry+height/2,min(uiz_getposx_self(circlesize,circlesizetype),uiz_getposy_self(circlesize,circlesizetype))/2-margin,1)
draw_set_alpha(1)
}
}
draw_set_color(c_white)
uiz_containend()
}



