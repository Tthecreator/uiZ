/// @description draw_hueSquare(x,y,w,h,value from 0 to 1)
/// @param x
/// @param y
/// @param w
/// @param h
/// @param value from 0 to 1
function draw_hueSquare(argument0, argument1, argument2, argument3, argument4) {
	/*
	draws a huesquare, just like in the colorpicker inside the uiz designer.
	Uses a shader that is compatible with the uiz contain model.
	If shaders arn't compatible then it uses a sprite, which might look a bit pixelated.
	*/

	if global.uiz_shader then{

	shader_set(global.uiz_shader_contain_hue)

	shader_set_uniform_f(global.uniformid_huevalue,argument4);
	shader_set_uniform_f(global.uniformid_doy,argument0,argument1,argument2,argument3)
	shader_set_uniform_f(global.uniformid_toy_hue,cntnx,cntny,cntnlx,cntnly)
	shader_set_uniform_f(global.uniformid_sz_hue,obj_uiZ_controller.width,obj_uiZ_controller.height);
	shader_set_uniform_f(global.uniformid_alpha_hue,alpha);
	texture_set_stage(global.uniformid_texture_hue, surface_get_texture(obj_uiZ_controller.uiz_appsurf));
	//*/
	draw_rectangle(argument0,argument1,argument2+argument0,argument3+argument1,0)
	//var mrx=max(rx,cntnx);
	//var mry=max(ry,cntny);
	//draw_surface_part(obj_uiZ_controller.uiz_appsurf,mrx,mry,min(rlx-mrx,cntnlx-cntnx),min(rly-mry,cntnly-cntny),rx,ry);
	//shader_reset();
	uiz_contain_regainshader()
	draw_set_color(c_white)
	}else{
	//draw_sprite(spr_uiz_hue,0,argument0,argument1);
	draw_sprite_wh(spr_uiz_hue,0,argument0,argument1,argument2,argument3,0,make_colour_hsv(0,0,argument4*255),1)
	//draw_sprite_wh(spr_uiz_hue,0,argument0,argument1,argument2,argument3,0,c_white,1)
	}




}
