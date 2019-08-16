///uiz_updater_FixViews_area_selfmarked(x1,y1,x2,y2)
//sdbm("initiating the updating of object area",id,object_get_name(object_index));
//if object_index=obj_uiZ_tabslider {
//sdbm("object area at",id,object_get_name(object_index),argument0,argument1,argument2,argument3, "relative: ",argument0-rx,argument1-ry,argument2-rx,argument3-ry);
//}
ds_list_add(obj_uiZ_controller.uiz_arealist_extra,id,max(argument0,cntnx),max(argument1,cntny),min(argument2,cntnlx),min(argument3,cntnly))
//ds_list_add(obj_uiZ_controller.uiz_arealist_extra,id,max(argument0),max(argument1),min(argument2),min(argument3))
uiz_selfmarked=true;
