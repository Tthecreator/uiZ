if keyboard_check_released(vk_right){anim++;}
if keyboard_check_released(vk_left){anim--;}
if keyboard_check_released(vk_up){testvalue+=1;}
if keyboard_check_released(vk_down){testvalue-=1}
if keyboard_check_released(vk_end){testvalue2+=1;}
if keyboard_check_released(vk_home){testvalue2-=1;}
draw_set_color(c_white)
draw_text(10,10,string_hash_to_newline(anim));
draw_text(10,20,string_hash_to_newline(testvalue));
draw_text(10,30,string_hash_to_newline(testvalue2));
w=100;
h=100;
topmargin=.5;
draw_rectangle(x,y-h*topmargin,x+w,y+h+h*topmargin,0);
x=0;
y=0;
surf = surface_create(w,h+h*topmargin*2);
for(anim=0;anim<38;anim++){
surface_set_target(surf);
draw_clear(c_white);
draw_set_color(c_red)
draw_line(x,y,x+w,y);
draw_line(x,y+h,x+w,y+h);
draw_set_color(c_blue)
draw_primitive_begin(pr_linestrip)
for(var i=0;i<=w;i++){
var animres=uiz_animation_getFunction(i/w,anim)
draw_vertex(x+i,y+h-animres*h);
}
draw_primitive_end();

draw_set_color(c_green);
draw_primitive_begin(pr_linestrip)
for(var i=0;i<=w;i++){
var animres=uiz_animation_getFunction(i/w,anim)
animres=uiz_animation_revertFunction(animres,anim)
draw_vertex(x+i,y+h-animres*h);
}
draw_primitive_end();
draw_set_color(c_purple);
draw_primitive_begin(pr_linestrip)
for(var i=0;i<=w;i++){
var animres=uiz_animation_getFunction(i/w,anim)
animres=uiz_animation_revertFunction(animres,anim)
var animres=uiz_animation_getFunction(animres,anim)
draw_vertex(x+i,y+h-animres*h);
}
draw_primitive_end();
surface_reset_target();
surface_save(surf,string(anim)+".png");
}
instance_destroy();

