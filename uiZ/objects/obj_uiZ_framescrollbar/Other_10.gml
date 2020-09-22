if uiz_cntn() then{
//draw_square(rx,ry,rlx,rly,c_aqua,1)

if horizontal=false then{
uiz_drawscrollbar_vertical_draw(rx,ry,rlx,rly,scrollbarsprite,scrollbarcolor,scrollbarbacktexturemode,uscroll,scrolllines)
}else{
uiz_drawscrollbar_horizontal_draw(rx,ry,rlx,rly,scrollbarsprite,scrollbarcolor,scrollbarbacktexturemode,uscroll,scrolllines)
}

uiz_containend()
}

