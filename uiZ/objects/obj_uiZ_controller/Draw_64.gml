/// @description utilize updater
//if (live_call()) return live_result;
global.uiz_fix_updates_draw=0;
var l=uiz_arealist
if (ds_exists(l,ds_type_list) and ds_list_size(l)>=4) or uiz_updateall=true then{

if uiz_useappsurf=true then{
    uiz_appsurf=application_surface
}else{
    if !surface_exists(uiz_appsurf) then{uiz_appsurf=surface_create(width,height);}
}


if !surface_exists(uiz_surf) {uiz_surf=surface_create(width,height);}

//sdbm("textureID:",uiz_appsurf,uiz_surf,surface_get_texture(uiz_appsurf),surface_get_texture(uiz_surf))

if uiz_updateall=true or ds_list_size(l)>0 then{

    global.surfacedebugcount=0
    global.surfacedebugcounty=0;
    //uiz_debug_drawsurface(uiz_appsurf,"app")
    //uiz_debug_drawsurface(uiz_surf,"uiz")
    surface_set_target(uiz_appsurf)
    //sdbm("executing draw_clear at place",0,random(99),uiz_updateall,ds_list_size(l))
    
    if uiz_updateall=true then{
        draw_clear_alpha(c_white,1);
        draw_set_color(c_white)
        draw_set_alpha(1)
    }else{
        draw_set_valign(fa_top);
        draw_set_halign(fa_left);
        draw_clear_alpha(c_black,0);
        draw_set_color(c_white)
        draw_set_alpha(1)
        //draw list
        var sz=ds_list_size(l);
        var m=uiz_arealist_oldsz;
        var drawstate=true;
        for(var i=0;i<m;i+=4){
            var lw=l[|i+2]-l[|i];
            var law=0;
            var lh=l[|i+3]-l[|i+1];
            var lah=0;
            //sdbm("drawing rectangle",l[|i]+law,l[|i+1]+lah,l[|i+2]+law,l[|i+3]+lah);
            //draw_rectangle(l[|i]+law,l[|i+1]+lah,l[|i+2]+law,l[|i+3]+lah,false);
            draw_square(l[|i]+law,l[|i+1]+lah,l[|i+2]+law,l[|i+3]+lah,c_white,1);
        }
        for(var i=m;i<sz;i+=5){
            var lw=l[|i+2]-l[|i];
            var law=0;
            var lh=l[|i+3]-l[|i+1];
            var lah=0;
            //sdbm("drawing rectangle 2",l[|i]+law,l[|i+1]+lah,l[|i+2]+law,l[|i+3]+lah);
            //draw_rectangle(l[|i]+law,l[|i+1]+lah,l[|i+2]+law,l[|i+3]+lah,false)
            draw_square(l[|i]+law,l[|i+1]+lah,l[|i+2]+law,l[|i+3]+lah,c_white,1);
        }
    
    }
    ds_list_clear(l)
    
    
    surface_reset_target();//reset appsurf
    //sdbm("test");
    //sdbm("uiz surf info: ",surface_get_width(uiz_surf),surface_get_height(application_surface),surface_get_width(application_surface),surface_get_height(uiz_surf),window_get_width(),window_get_height())
    surface_set_target(uiz_surf)
    draw_set_blend_mode_ext(bm_zero,bm_inv_src_alpha)
    draw_surface(uiz_appsurf,0,0);
    //draw_clear_alpha(c_white,0);
    //draw_set_blend_mode_ext(bm_one,bm_inv_src_alpha);
    uiz_changeSurface=false;
    //sdbm("shader set to:",global.uiz_shader)
    //draw_set_blend_mode(bm_normal)
    //draw_surface_ext(uiz_appsurf,room_width/2,room_height/2,0.5,0.5,0,c_white,0.7);
    
    //set shader
    if global.uiz_shader=true then{
    //sdbm("test");
    shader_set(global.uiz_shader_contain);
    uiz_contain_shader_uniforms_set();
    draw_set_blend_mode_ext(bm_one,bm_inv_src_alpha);
    //draw_set_blend_mode(bm_normal);
    }else{
    draw_set_blend_mode(bm_normal);
    }
    
    draw_set_color(c_white)
    
    uiz_updater_updateSet(obj_uiZ_controller,uiz_updateall);
    surface_reset_target();
    if global.uiz_shader=true then{
    shader_reset();
    draw_set_blend_mode(bm_normal);
    }

}



uiz_updateall=false
}


if !surface_exists(uiz_surf){
uiz_surf=surface_create(width,height);
show_error("No uiz surface to draw",false);
}
/*
if !surface_exists(uiz_surf_secondary){
uiz_surf_secondary=surface_create(width,height);
}
*/

//draw_set_blend_mode(bm_normal);
draw_set_blend_mode_ext(bm_one,bm_inv_src_alpha);
draw_set_color(c_white)
draw_set_alpha(1)
draw_surface(uiz_surf,0,0)
//draw_surface_ext(uiz_surf,0,0,1,1,0,c_white,1);

//draw_surface_ext(uiz_appsurf,room_width/2,room_height/2,0.5,0.5,0,c_white,0.7)
//draw_surface_ext(uiz_appsurf,0,0,1,1,0,c_white,0.7)

//draw_text(10,50,string(uiz_surf)+"; "+string(uiz_appsurf)+"; "+string(application_surface))


/*
var d=global.mouseover;
if instance_exists(d) then{
draw_square(d.rx,d.ry,d.rlx,d.rly,c_red,0.1)
}
*/
//draw_surface_ext(application_surface,0,0,1,1,0,c_red,0.5)
//if surface_exists(global.uiz_debugsurface){draw_surface(global.uiz_debugsurface,0,0)}


//uiz_textmiddle_topleft()
//draw_text(20,50,global.uiz_debug_text)

/* */
///draw snap icon.
if snapm=true then{draw_square(snapx-3,snapy-3,snapx+3,snapy+3,c_red,1)}

/* */
///draw typecursor system
if typecursor_enabled=true then{
//sdbm("drawing cursor",typecursor_color,typecursor_alpha,typecursor_width,typecursor_x1,typecursor_y1,typecursor_x2,typecursor_y2)
draw_set_color(typecursor_color);
draw_set_alpha(typecursor_alpha);
draw_line_width(typecursor_x1,typecursor_y1,typecursor_x2,typecursor_y2,typecursor_width);
draw_set_alpha(1)
}

/* */
///reset uiz_arealist_oldsz
uiz_arealist_oldsz = 99999999999;

/* */
/*  */
