///uiz_contain_surface()
//pcontaininwhat=p
var p=ucontainin;
if !surface_exists(p.containframe) then{
p.containframe=surface_create(p.width,p.height)
}
surface_set_target(p.containframe)
draw_set_blend_mode_ext(bm_zero,bm_zero)
draw_rectangle(0,0,p.width,p.height,0)
draw_set_blend_mode(bm_normal)
rx-=p.rx
ry-=p.ry
rlx-=p.rx
rly-=p.ry

