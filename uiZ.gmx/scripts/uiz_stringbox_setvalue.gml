///uiz_stringbox_setvalue(stringbox,value)
//Sets the text in a stringbox.
gml_pragma("forceinline");
with(argument0){
    str_real = argument1;
    uiz_stringbox_str_real_init();
    uiz_updater_FixViews();
}
//argument0.value=string(argument1)
//argument0.qstr=""
