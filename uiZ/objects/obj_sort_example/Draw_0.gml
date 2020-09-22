if !surface_exists(surf) then{
surf=surface_create(window_get_width(),window_get_height())
update=1
}
if keyboard_check_released(vk_left) then{update=1}
if update=1 then{
update=0
for(var i=0;i<10;i++){
array[i]=irandom(10)
}
surface_set_target(surf)
draw_set_color(c_ltgray)
draw_rectangle(0,0,window_get_width(),window_get_height(),0)
draw_set_color(c_black)
//the draw event is not the best place to place this script, but else we cant draw the debug-stats
scr_sort_debug(array)
scr_sort_drawvalues(0,array_length_1d(arr)-1)
surface_reset_target()
}
draw_surface(surf,0,0)

