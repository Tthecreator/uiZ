//sdbm("setting uniforms",obj_uiZ_controller.width,obj_uiZ_controller.height,surface_get_width(obj_uiZ_controller.uiz_appsurf),surface_get_height(obj_uiZ_controller.uiz_appsurf))
texture_set_stage(global.uniformid_texture, surface_get_texture(obj_uiZ_controller.uiz_appsurf));
shader_set_uniform_f(global.uniformid_sz,obj_uiZ_controller.width,obj_uiZ_controller.height);

