uiz_checkScreenResize();

if resetSurfaces then{
    resetSurfaces = false;
    uiz_updateall=true;
    if surface_exists(uiz_surf){
        surface_resize(uiz_surf,window_w,window_h);
        //uiz_updater_FixViews_addsquare(0,0,window_w,window_h);
    }else{
        uiz_surf = surface_create(window_w,window_h);
    }
    
    if !uiz_useappsurf{
    if surface_exists(uiz_appsurf){
        surface_resize(uiz_appsurf,window_w,window_h)        
    }else{
        uiz_appsurf = surface_create(window_w,window_h);
    }
    }
}else{
//sdbm("only checking surface existance");
    if !surface_exists(uiz_surf){
    uiz_surf=surface_create(width,height);
    uiz_updateall=true;
    //uiz_updater_FixViews_addsquare(0,0,window_w,window_h);
    }
}

if uiz_useappsurf=true then{
uiz_appsurf=application_surface
if surface_get_width(application_surface)!=width || surface_get_height(application_surface)!=height then{
sdbm("[uiZ|INFO] resizing app surf")
surface_resize(application_surface,width,height);
/*
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = width;
view_hport[0] = height;
view_xview[0] = 0;
view_yview[0] = 0;
view_wview[0] = width;
view_hview[0] = height;
*/
}
}

/* */
/*  */
