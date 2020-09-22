
if uiz_cntn() then{
uiz_back()
uiz_textmiddle()
draw_set_color(textcolor)
if font>-1 then{draw_set_font(font)}
draw_text(rx+width/2,ry+height/2,string_hash_to_newline(uiz_getText_contained(text,width)))
uiz_textmiddle_topleft()
uiz_containend()
}


