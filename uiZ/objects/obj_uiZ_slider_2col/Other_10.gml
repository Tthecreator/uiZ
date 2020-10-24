if uiz_cntn() then{
if uiz_selfmarked=false then{
var mid=floor(ry+height/2);
//uiz_drawsquare_colour(rx,ry,rlx,mid,color1,color2,color2,color1,alpha)
draw_rectangle_colour(rx,ry,rlx,mid,color1,color2,color2,color1,false)
draw_rectangle_colour(rx,mid,rlx,rly,color3,color4,color4,color3,false)
if outline=1 then{
uiz_draw_rectangle_edgeColor(rx,ry,rlx,rly,coloroutline1,coloroutline2,coloroutline2,coloroutline1,1,outlinewidth)
}
}
var pf=round((width-slidersz)*invalue);
var pl=pf+round(slidersz)

draw_square(pf+rx,ry+height/2-sliderh/2,pl+rx,ry+height/2+sliderh/2+1,ucolor,slideralpha*alpha)
uiz_containend()
}



