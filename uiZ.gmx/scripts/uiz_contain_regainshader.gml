if global.uiz_shader=1 and uiz_shader=1 then{
//uses shaders
shader_set(global.uiz_shader_contain);
uiz_contain_shader();
uiz_contain_shader_uniforms_set();
}else{
//uses surfaces
shader_reset()
}
