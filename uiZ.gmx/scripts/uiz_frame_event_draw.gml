
if debugmark=1 then{
draw_set_alpha(0.5)
//draw_set_alpha(1)
if global.mouseover=id then{draw_set_color(c_white)}else{
draw_set_color(markcolor)}
draw_rectangle(rx,ry,rlx-1,rly-1,0)
//sdbm("eec")
draw_set_color(c_black)
draw_text(rx+10,ry+10,id)
draw_set_alpha(1)
}
if uiz_cntn() then{
if mark=true then{
draw_square(rx,ry,rlx,rly,markcolor,alpha)
}

if scrollx=true and scrollbarx=true and mscrollbarx<0 then{
uiz_drawscrollbar_horizontal_draw(rx,ily,rlx-scrollbarcorner_x,rly,scrollbarsprite,scrollbarcolor,scrollbarbacktexturemode,uscrollx,-mscrollbarx)
}
if scrolly=true and scrollbary=true and mscrollbary<0 then{
uiz_drawscrollbar_vertical_draw(ilx,ry,rlx,rly-scrollbarcorner_y,scrollbarsprite,scrollbarcolor,scrollbarbacktexturemode,uscrolly,-mscrollbary)
}
uiz_containend()
}
