///uiz_contain_surface(containinwhat)
//show_message("containing useing surface @"+string(id)=" , "+string(object_get_name(id)))
//dbm("containing useing surface @",id,object_get_name(id))
//sdbm("cntnsurface @"+string(id))
//sdbm("ex2")
var p=argument0
pcontaininwhat=p
if !surface_exists(p.containframe) then{
//sdbm("ex3",surface_exists(p.containframe),p.containframe,p.width,p.height)
p.containframe=surface_create(p.width,p.height)
}else{
if !(surface_get_width(p.containframe)>=p.width and surface_get_height(p.containframe)>=p.height) then{
//sdbm("ex4")
surface_resize(p.containframe,max(5,surface_get_width(p.containframe),p.width),max(5,surface_get_height(p.containframe),p.height))
}
}
//sdbm("ex5",surface_get_width(p.containframe),surface_get_height(p.containframe))
surface_set_target(p.containframe)
draw_set_blend_mode_ext(bm_zero,bm_zero)
draw_rectangle(0,0,p.width,p.height,0)
draw_set_blend_mode(bm_normal)
rx-=p.rx
ry-=p.ry
rlx-=p.rx
rly-=p.ry
//sdbm("ex6")
