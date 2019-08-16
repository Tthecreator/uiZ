///draw_circbar_col(x,y,radius,opening,percent,thickness,precision,backcolor,barcolor)
var l=argument2
var cx=argument0
var cy=argument1
var th=argument5
var op=argument3
var pr=360/argument6
var colcorn=(argument4*(360-op*2)+op)
draw_set_color(argument7)
draw_primitive_begin(pr_trianglestrip)
var difx=((l+l*dsin(pr+((floor(op/pr)))*pr))-(l+l*dsin((floor(op/pr))*pr)))/pr
var dify=((l+l*dcos(pr+(floor(op/pr))*pr))-(l+l*dcos((floor(op/pr))*pr)))/pr
var difx2=((l+(l-th)*dsin(pr+((floor(op/pr)))*pr))-(l+(l-th)*dsin((floor(op/pr))*pr)))/pr
var dify2=((l+(l-th)*dcos(pr+(floor(op/pr))*pr))-(l+(l-th)*dcos((floor(op/pr))*pr)))/pr
draw_vertex(cx+l+l*dsin(pr+floor(op/pr)*pr)+difx*(op-(pr+floor(op/pr)*pr)),cy+l+l*dcos(pr+floor(op/pr)*pr)+dify*(op-(pr+floor(op/pr)*pr)))
draw_vertex(cx+l+(l-th)*dsin(pr+floor(op/pr)*pr)+difx2*(op-(pr+floor(op/pr)*pr)),cy+l+(l-th)*dcos(pr+floor(op/pr)*pr)+dify2*(op-(pr+floor(op/pr)*pr)))
var u=floor(op/360*argument6)+1
var u2=floor(colcorn/360*argument6)+1
var corn=u/argument6*360
for(i=u;i<=argument6-u2;i++){
corn=i/argument6*360
draw_vertex(cx+l+l*dsin(corn),cy+l+l*dcos(corn))
draw_vertex(cx+l+(l-th)*dsin(corn),cy+l+(l-th)*dcos(corn))
}
corn=360-corn
difx=((l-l*dsin(pr+floor(colcorn/pr)*pr))-(l-l*dsin(floor(colcorn/pr)*pr)))/pr
dify=((l-l*dcos(pr+floor(colcorn/pr)*pr))-(l-l*dcos(floor(colcorn/pr)*pr)))/pr
difx2=((l-(l-th)*dsin(pr+floor(colcorn/pr)*pr))-(l-(l-th)*dsin(floor(colcorn/pr)*pr)))/pr
dify2=((l-(l-th)*dcos(pr+floor(colcorn/pr)*pr))-(l-(l-th)*dcos(floor(colcorn/pr)*pr)))/pr
draw_vertex(cx+l-l*dsin(corn)+difx*(colcorn-corn),cy+l+l*dcos(corn)-dify*(colcorn-corn))
draw_vertex(cx+l-(l-th)*dsin(corn)+difx2*(colcorn-corn),cy+l+(l-th)*dcos(corn)-dify2*(colcorn-corn))
draw_primitive_end()
draw_set_color(argument8)
draw_primitive_begin(pr_trianglestrip)
draw_vertex(cx+l-l*dsin(corn)+difx*(colcorn-corn),cy+l+l*dcos(corn)-dify*(colcorn-corn))
draw_vertex(cx+l-(l-th)*dsin(corn)+difx2*(colcorn-corn),cy+l+(l-th)*dcos(corn)-dify2*(colcorn-corn))
var u=floor(op/360*argument6)+1
var u2=floor(colcorn/360*argument6)+1
for(i=argument6-u2+1;i<=argument6-u;i++){
var corn=i/argument6*360
draw_vertex(cx+l+l*dsin(corn),cy+l+l*dcos(corn))
draw_vertex(cx+l+(l-th)*dsin(corn),cy+l+(l-th)*dcos(corn))
}
difx=((l-l*dsin(pr+((floor(op/pr)))*pr))-(l-l*dsin((floor(op/pr))*pr)))/pr
dify=((l+l*dcos(pr+(floor(op/pr))*pr))-(l+l*dcos((floor(op/pr))*pr)))/pr
difx2=((l-(l-th)*dsin(pr+((floor(op/pr)))*pr))-(l-(l-th)*dsin((floor(op/pr))*pr)))/pr
dify2=((l+(l-th)*dcos(pr+(floor(op/pr))*pr))-(l+(l-th)*dcos((floor(op/pr))*pr)))/pr
draw_vertex(cx+l-l*dsin(pr+floor(op/pr)*pr)+difx*(op-(pr+floor(op/pr)*pr)),cy+l+l*dcos(pr+floor(op/pr)*pr)+dify*(op-(pr+floor(op/pr)*pr)))
draw_vertex(cx+l-(l-th)*dsin(pr+floor(op/pr)*pr)+difx2*(op-(pr+floor(op/pr)*pr)),cy+l+(l-th)*dcos(pr+floor(op/pr)*pr)+dify2*(op-(pr+floor(op/pr)*pr)))
draw_primitive_end()

