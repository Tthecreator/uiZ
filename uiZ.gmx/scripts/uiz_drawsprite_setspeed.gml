///uiz_drawsprite_setspeed(instanceid,image_spf[0])
gml_pragma("forceinline");
argument0.image_spf=argument1;
with(argument0){
    if image_spf!=0 then{
        uiz_updater_step();
    }else{
        uiz_updater_unstep();
    }
}
