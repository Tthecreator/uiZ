updated=false
if kmouseover=uiz_mousepressed then{
    selected=true;
    if global.doubleclick=1 then{
        updated=true;
        if onDoubleClick!=-1 and script_exists(onDoubleClick) then{
            script_execute(onDoubleClick, id, onDoubleClickArgument);
        }
    }}else{
if !mouse_check_button(mb_left) or mouse_check_button_released(mb_left) or kmouseover=uiz_nomouse then{selected=false}
//if kmouseover=uiz_mousereleased then{
//   selected=false;
//}
}
uiz_fix_Background();
uiz_updater_FixViews();

