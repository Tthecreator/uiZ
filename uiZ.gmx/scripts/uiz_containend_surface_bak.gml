//if incontainframe=1 then{
//show_message("resetting surface")
//sdbm("endsurf @"+string(id))
surface_reset_target()
//var p=pcontaininwhat
var p=ucontainin
if surface_exists(p.containframe) then{
draw_set_alpha(1)
draw_surface_part(p.containframe,0,0,p.width,p.height,p.rx,p.ry)
}
rx+=p.rx
ry+=p.ry
rlx+=p.rx
rly+=p.ry

//}
