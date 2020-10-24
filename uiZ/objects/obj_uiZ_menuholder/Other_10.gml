if mark=1 then{
draw_set_alpha(0.5)
if global.mouseover=id then{draw_set_color(c_white)}else{
draw_set_color(markcolor)}
draw_rectangle(rx,ry,rlx-1,rly-1,0)
draw_set_color(c_black)
draw_text(rx+10,ry+10,string_hash_to_newline(id))
draw_set_alpha(1)
}

