if !instance_exists(window) then{
instance_destroy();
}

if keyboard_check(vk_control) and keyboard_check(vk_shift) and keyboard_check(ord("I")) then{
//regain focus on window
uiz_window_select(window);

}

