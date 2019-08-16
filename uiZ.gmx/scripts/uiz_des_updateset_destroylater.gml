///uiz_des_updateset(newobject)
///update the object-properties panel to the specified object
//if instance_exists(selobj) then{with(selobj){instance_destroy()}}
//selobj=-1
switch(argument0.object_index){
case obj_uiZ_gradientsquare:
selobj=instance_create(0,0,obj_uiz_des_gradientsquare)
break;
default:
selobj=instance_create(0,0,obj_uiz_des_empty)
break;
}
selobj.object=argument0
selobj.overdestroy=1
