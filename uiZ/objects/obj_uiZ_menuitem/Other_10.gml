if uiz_cntn(){
draw_square(rx,ry,rlx,rly,color,1)
draw_set_color(c_black)
draw_text(rx+5,ry+5,string_hash_to_newline("This is a list item"))
draw_text(rx+5,ry+20,string_hash_to_newline("item "+ansi_char(135)+": "+string(scrollyid)))
uiz_containend()
}

