//draw_square(rx,ry,rlx,rly,c_white,1)

if uiz_cntn() then{
//draw_sprite_ext(sprite,kmouseover+spraddto,rx,ry,width/sprite_get_width(sprite),height/sprite_get_height(sprite),0,color,image_alpha)
//dbm("executing")
draw_square(rx,ry,rlx,rly,color,alpha)
//draw_set_color(c_white)
//draw_rectangle(rx,ry,rlx,rly,0)
if outline=1 then{
draw_set_color(outlinecolor)
draw_set_alpha(outlinealpha*alpha)
draw_rectangle(rx-1,ry-1,rlx-1,rly-1,1)
draw_set_color(c_white)
draw_set_alpha(alpha)
}
if text!="" then{
//TODO: add text alignment here
if font>-1 then{draw_set_font(font)}
draw_set_alpha(textalpha*alpha)
draw_set_color(textcolor)
draw_text(rx,ry,string_hash_to_newline(uiz_getText_contained(text,width)))
draw_set_alpha(alpha)
}
uiz_containend()
}
//



