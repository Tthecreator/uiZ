///uiz_contain_usesShaderOrSurface()
//return 1 for shader
//return 0 for surface.
if global.uiz_shader=1 and uiz_shader=1 then{
//uses shaders
return 1;
}else{
//uses surfaces
return 0;
}
