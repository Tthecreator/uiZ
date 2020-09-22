if uiz_cntn() then{
draw_set_alpha(alpha)
draw_set_color(linecolor)
if uiz_selfmarked=true then{
//draw_line_width(rx+linemargin,ry+height/2,rlx-linemargin,ry+height/2,linethickness)
draw_line_width(pm1x,ry+height/2,pm2x,ry+height/2,linethickness)
}else{

draw_line_width(rx+linemargin,ry+height/2,rlx-linemargin,ry+height/2,linethickness)
}


uiz_back_at(p1x,p1y,p2x,p2y,hasmouse*2)
uiz_containend()
}

