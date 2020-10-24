
if uiz_cntn() then{
draw_sprite_ext(sprite,kmouseover+spraddto,rx,ry,width/sprite_get_width(sprite),height/sprite_get_height(sprite),0,color,image_alpha)
if text!="" then{
draw_set_alpha(1)
draw_set_color(textcolor)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if font>-1 then{draw_set_font(font)}
draw_text(rx+width/2,ry+height/2,string_hash_to_newline(uiz_getText_contained(text,width)))
//draw_text(rx+width/2,ry+height/2,"penis")
draw_set_valign(fa_top)
draw_set_halign(fa_left)
}
uiz_containend()
}




