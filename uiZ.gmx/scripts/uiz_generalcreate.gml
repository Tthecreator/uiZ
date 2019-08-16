///uiz_generalcreate(object)
switch(argument0){
case obj_uiZ_windowholder:
var o=uiz_window_create(100,px,100,px);
//with(o){uiz_window_create_finish()}
return o;
break;
default:
return instance_create(0,0,argument0)
break;
}
