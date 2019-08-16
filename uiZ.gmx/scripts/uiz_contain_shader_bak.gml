///uiz_contain_shader(containinwhat)
shader_set(sh_uiz_contain)
//shader_set(shader1)
var p=argument0
//pcontaininwhat=p
shader_set_uniform_f(global.uniformid_toy,p.rx,p.ry,p.rlx,p.rly)
//shader_set_uniform_f(global.uniformid_scs,window_get_width(),window_get_height())
