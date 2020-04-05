///uiz_framescrollbar_setframe(instanceid,frame id)
gml_pragma("forceinline");
argument0.frame=argument1;
ds_list_add(argument1.scrollupdateobjs,argument0);
