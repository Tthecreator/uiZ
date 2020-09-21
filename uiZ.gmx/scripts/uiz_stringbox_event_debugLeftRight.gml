///check debug left-right movement

if keyboard_check_released(vk_pagedown) then{
    uiz_stringbox_shiftleft();
    uiz_updater_FixViews();

}
if keyboard_check_released(vk_pageup) then{
    uiz_stringbox_shiftright();
    uiz_updater_FixViews();

}
