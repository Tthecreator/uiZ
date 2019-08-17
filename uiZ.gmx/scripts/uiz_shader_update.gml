///update shader information uniform values
if global.uiz_shader=true then{
    if global.uiz_useFallbackShader then{
        global.uiz_shader_contain = sh_uiz_contain_fallback;
        global.uiz_shader_contain_hue = sh_uiz_contain_hue_fallback;
        global.uiz_shader_contain_blur = sh_uiz_contain_blur_fallback;
    }else{
        global.uiz_shader_contain = sh_uiz_contain;
        global.uiz_shader_contain_hue = sh_uiz_contain_hue;
        global.uiz_shader_contain_blur = sh_uiz_contain_blur;
    }
    
    global.uniformid_toy=shader_get_uniform(global.uiz_shader_contain,"toy")
    global.uniformid_toy_hue=shader_get_uniform(global.uiz_shader_contain_hue,"toy")
    global.uniformid_sz=shader_get_uniform(global.uiz_shader_contain,"sz")
    global.uniformid_sz_hue=shader_get_uniform(global.uiz_shader_contain_hue,"sz")
    global.uniformid_alpha_hue=shader_get_uniform(global.uiz_shader_contain_hue,"alpha")
    global.uniformid_doy=shader_get_uniform(global.uiz_shader_contain_hue,"doy")
    global.uniformid_texture=shader_get_sampler_index(global.uiz_shader_contain,"s_Background")
    global.uniformid_texture_hue=shader_get_sampler_index(global.uiz_shader_contain_hue,"s_Background")
    global.uniformid_texture_blur=shader_get_sampler_index(global.uiz_shader_contain_blur,"s_Background")
    global.uniformid_huevalue=shader_get_uniform(global.uiz_shader_contain_hue,"val")
    global.uniformid_texture_toy_blur=shader_get_uniform(global.uiz_shader_contain_blur,"toy")
}


