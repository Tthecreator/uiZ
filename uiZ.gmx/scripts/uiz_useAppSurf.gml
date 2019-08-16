///uiz_useAppSurf(bool enabled)
//uiZ can use the application surface internally to use up less VRAM. This is enabled by default.
//If you aren't using the application surface, or need to use the application surface for other purposes, you need to disable the use of the application surface by uiZ.
with(obj_uiZ_controller){
    if(argument0){
        if uiz_appsurf!=application_surface and surface_exists(uiz_appsurf) then{
            surface_free(uiz_appsurf);
        }
        uiz_appsurf=application_surface;
        
    }else{
        if uiz_appsurf==application_surface or !surface_exists(uiz_appsurf) then{
            uiz_appsurf=surface_create(width,height);
        }
    }
    uiz_useappsurf=argument0;
}
