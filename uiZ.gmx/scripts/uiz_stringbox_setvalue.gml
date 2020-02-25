///uiz_stringbox_setvalue(stringbox,value)
//Sets the text in a stringbox.
gml_pragma("forceinline");
with(argument0){
    if is_real(argument1) then{
        str_real = uiz_string_fromReal(argument1);
    }else{
        str_real = string(argument1);
    }
    //sdbm("updating stringbox")
    updated = true;
    update = true;
    uiz_updater_step_endcheck();
    uiz_stringbox_str_real_init();
    uiz_stringbox_resetdis();
    uiz_updater_FixViews();
}
//argument0.value=string(argument1)
//argument0.qstr=""
