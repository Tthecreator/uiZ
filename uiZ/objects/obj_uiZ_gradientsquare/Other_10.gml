if uiz_cntn() then{
draw_set_alpha(1);
//sdbm("mypos:",rx,ry,rlx,rly)
if outline=true then{//draw_square_colour(rx+1,ry+1,rlx,rly,color5,color6,color7,color8,1,alpha)
draw_rectangle_colour(rx+1,ry+1,rlx-2,rly-2,color1,color2,color3,color4,false);
draw_rectangle_colour(rx+1,ry+1,rlx-2,rly-2,color5,color6,color7,color8,true)

}else{
draw_rectangle_colour(rx,ry,rlx,rly,color1,color2,color3,color4,false);
}
if istext=1 then{
if font>-1 then{draw_set_font(font)}
draw_set_color(textcolor)
draw_text(rx,ry,string_hash_to_newline(uiz_getText_contained(text,width)))
}
uiz_containend()
}




