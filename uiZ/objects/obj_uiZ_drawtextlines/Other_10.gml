if uiz_cntn() then{
draw_set_color(color)
draw_set_alpha(alpha)
if center=1 then{
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if font!=-1 then{draw_set_font(font)}
draw_text(rx+width/2,ry+height/2,string_hash_to_newline(drawtext))
draw_set_valign(fa_top)
draw_set_halign(fa_left)
}else{
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text(rx+marginw,ry+marginh,string_hash_to_newline(drawtext))}
uiz_containend()
}




