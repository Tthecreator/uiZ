if uiz_cntn() then{
draw_set_color(color)
//draw_set_alpha(1)
if font>-1 then{draw_set_font(font)}
if center=1 then{
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
//sdbm("draw2")
//if text="texturemode border:" then{sdbm("startdraw",text,uiz_getText_contained(text,width))}
draw_text(rx+width/2,ry+height/2,string_hash_to_newline(uiz_getText_contained(text,width)))
//draw_text(rx+width/2,ry+height/2,text)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
}else{
//if text="texturemode border:" then{sdbm("startdraw",text,uiz_getText_contained(text,width))}
draw_text(rx,ry,string_hash_to_newline(uiz_getText_contained(text,width)))
//sdbm("draw")
//draw_text(rx,ry,"123test123")
}
//if text="texturemode border:" then{sdbm("enddraw",text,uiz_getText_contained(text,width))}
uiz_containend()
}




