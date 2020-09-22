if uiz_cntn() then{
if uiz_selfmarked=false then{
    if (roundedcorners){
        draw_square_rounded_colour(rx,ry,rlx,rly,color1,color2,color2,color1,alpha,rounddx,rounddy,true);
    }else{
        uiz_drawsquare_colour(rx,ry,rlx,rly,color1,color2,color2,color1,alpha) 
    }
    if outline=1 then{
        if (roundedcorners){
            draw_square_rounded_colour_outlined(rx,ry,rlx,rly,coloroutline1,coloroutline2,coloroutline2,coloroutline1,alpha,rounddx,rounddy,outlinewidth)
        }else{
            uiz_draw_rectangle_edgeColor(rx,ry,rlx,rly,coloroutline1,coloroutline2,coloroutline2,coloroutline1,alpha,outlinewidth)
        }
    }
}
var pf=round((width-slidersz)*invalue);
var pl=pf+round(slidersz)
draw_square(pf+rx,ry+height/2-sliderh/2,pl+rx,ry+height/2+sliderh/2,ucolor,slideralpha*alpha)
uiz_containend()
}

