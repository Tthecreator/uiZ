/*
if clearsurface=1 then{
if !surface_exists(surface) then{
surface=surface_create(max(1,width),max(1,height))
}
surface_set_target(surface)
//draw_set_blend_mode_ext(bm_zero,bm_inv_dest_alpha)
draw_set_blend_mode_ext(bm_zero,bm_zero)
//draw_set_alpha(0)
draw_rectangle(0,0,width,height,0)
draw_set_blend_mode(bm_normal)
surface_reset_target()

}

/* */
/*  */
