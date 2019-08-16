///uiz_updater_useApplicationSurface(bool)
with(obj_uiZ_controller){
var cur=uiz_useappsurf;
var new=argument0
if cur=false  then{
if new=true then{
if cur!=application_surface and surface_exists(cur) then{
surface_free(cur);
}
cur=surface_create(width,height);
}
}else{
if new=false then{
//true -> false (app -> cust)
if cur=application_surface or !surface_exists(cur) then{cur=surface_create(width,height);}
}else{
//true -> true
if !surface_exists(cur) then{cur=surface_create(width,height);}
}
}
uiz_useappsurf=argument0;
}

