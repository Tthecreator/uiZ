///uiz_animation_start(id)
var l=obj_uiZ_controller.uiz_animationlist
/*
var sz=ds_list_size(l);
var d=true;
for(var i=0;i<sz;i++){
if l[|i]=argument0 then{d=false; break;}
}

if d {
*/
if argument0.inanimation=false then{ds_list_add(l,argument0)}
argument0.inanimation=true;
argument0.function_count=0;
