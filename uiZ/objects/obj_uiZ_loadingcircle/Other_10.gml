//if containin=0 then{var ucontainin=containtowhosparent.parent}else{var ucontainin=containin}
if uiz_cntn() then{
var mx=rx+width/2
var my=ry+height/2
var w=width/2
var h=height/2
var w2=w-thickness
var h2=h-thickness
draw_set_color(color)

draw_primitive_begin(pr_trianglestrip)
if countadd=1 then{
var to=precision*1.5-(precision*uiz_animation_getFunction(count,graph1))
for(var i=precision/2;i<=to;i++){
var angle=(i/precision)*2*pi;
var angle2=((i+1)/precision)*2*pi;
draw_vertex(mx+w*sin(angle),my+h*cos(angle))
draw_vertex(mx+w2*sin(angle),my+h2*cos(angle))
}
}else{
var to=precision*1.5-(precision*uiz_animation_getFunction(1-count,graph2))
for(var i=precision/2;i<=to;i++){
var angle=(i/precision)*2*pi;
var angle2=((i+1)/precision)*2*pi;
draw_vertex(mx-w*sin(angle),my+h*cos(angle))
draw_vertex(mx-w2*sin(angle),my+h2*cos(angle))
}
}
draw_primitive_end()
uiz_containend()
}
count+=1/(countspeed*room_speed)
if count>=1 then{
countadd=!countadd
count-=1}




