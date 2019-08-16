/*
if uiz_cntn(){
thickness=5
stripes=10

var sw=width/(stripes*2-1)
var sh=height/(stripes*2-1)
var sa=(sw+sh)/2
var stripesw=round(width/sa)
var stripesh=round(height/sa)
sw=width/(stripesw-1)
sh=height/(stripesh-1)
//draw lines in width
for(var i=0;i<stripesw;i+=2){
draw_line_width(rx+sw*i,ry,rx+sw*i+sw,ry,thickness)
draw_line_width(rx+sw*i,rly,rx+sw*i+sw,rly,thickness)
}
//draw lines in height
for(var i=0;i<stripesh;i+=2){
draw_line_width(rx,ry+sh*i,rx,ry+sh*i+sh,thickness)
draw_line_width(rlx,ry+sh*i,rlx,ry+sh*i+sh,thickness)
}

//top left corner
draw_circle(rx,ry,thickness/2,0)
//top right corner
draw_circle(rlx,ry,thickness/2,0)
//bottom left corner
draw_circle(rx,rly,thickness/2,0)
//bottom right corner
draw_circle(rlx,rly,thickness/2,0)


uiz_containend()}
