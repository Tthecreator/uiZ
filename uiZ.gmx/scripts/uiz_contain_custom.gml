///uiz_contain_custom(x1,y1,x2,y2)
//if uiz_contain_usesshaderorsurface()=1 then{
//use shaders
//sdbm("custom shader")
shader_reset()
shader_set(global.uiz_shader_contain)
cntnx=argument0
cntny=argument1
cntnlx=argument2
cntnly=argument3
shader_set_uniform_f(global.uniformid_toy,cntnx,cntny,cntnlx,cntnly)

/*
}else{
//sdbm("custom surface")
//use surfaces
//var sw=argument2-argument0;
//var sh=argument3-argument1;
//write old surface
uiz_containend_surface()
//set new surface
uiz_contain_surface()
cntnx=argument0
cntny=argument1
cntnlx=argument2
cntnly=argument3

}
*/
thisforcecontain=true;
