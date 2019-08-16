
//draw_set_blend_mode(bm_normal)

surface_reset_target();
uiz_updater_setsurface();
if surface_exists(global.uiz_containframe) then{
draw_set_alpha(1)
draw_surface_part(global.uiz_containframe,cntnx,cntny,cntnlx-cntnx,cntnly-cntny,cntnx,cntny)
}
surface_set_target(uiz_surf)

