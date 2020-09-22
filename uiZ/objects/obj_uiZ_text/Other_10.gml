if uiz_cntn() then{
uiz_back();

if font>-1 then{draw_set_font(font)}
draw_set_color(color)
draw_set_valign(valign)
draw_set_halign(halign)
draw_text(ix+iwidth*(halign/2),iy+iheight*(valign/2),string_hash_to_newline(drawtext))
draw_set_valign(fa_top)
draw_set_halign(fa_left)

uiz_containend()
}




