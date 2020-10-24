if ds_exists(uselist,ds_type_list) then{
var sz=ds_list_size(uselist)
if problems=1 and mouse_wheel_down() then{scroll=clamp(scroll+scrollspeed,0,sz-1)}
if scroll>0 and mouse_wheel_up() then{scroll=clamp(scroll-scrollspeed,0,sz-1)}
}

if mouse_check_button(mb_left) and kmouseover=0 then{
    updated=1;
    selection=-1;
    uiz_destroyObject_animation_default(id);
}



