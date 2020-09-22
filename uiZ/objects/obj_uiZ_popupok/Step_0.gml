if instance_exists(destroyframe) then{
kmouseover=uiz_mouse_isOver_object_leftCheck(id)
if indestroy>0 then{indestroy--};
if kmouseover=2 then{
if destroyframe!=0 then{
indestroy=indestroysteps;
indestroying=1
if box>0 and instance_exists(box) then{global.uiz_popupreturnstring=box.value;}
//if 
//uiz_destroyObject(destroyframe)
//uiz_destroyobject_animation(destroyframe,window.destroyxfunction,window.destroyyfunction,window.destroyafunction,window.destroyspeed)
uiz_destroyObject_animation(destroyframe,uiz_zero,uiz_zero,uiz_smoothstep,window.destroyspeed)
uiz_animation_updateChildren(destroyframe, true);

}
if box>0 and instance_exists(box) then{str=box.value;}
}

destroyframe.indestroy=indestroy;
destroyframe.indestroying=indestroying;
destroyframe.str=str;
}else{
uiz_destroyObject(id)
}

