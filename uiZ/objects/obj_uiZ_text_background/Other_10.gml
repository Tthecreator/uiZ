if uiz_cntn() then{
//draw_set_alpha(1)
uiz_back(0)
if font>-1 then{draw_set_font(font)}
//draw_rectangle(rx,ry,rlx,rly,0)
draw_set_color(color)
draw_set_alpha(alpha)
draw_set_valign(valign)
draw_set_halign(halign)
draw_text(rx+(width-bkmar*2)*(halign/2)+bkmar,ry+(height-bkmar*2)*(valign/2)+bkmar,string_hash_to_newline(uiz_getText_contained(text,width)))
draw_set_valign(fa_top)
draw_set_halign(fa_left)

uiz_containend()
}




