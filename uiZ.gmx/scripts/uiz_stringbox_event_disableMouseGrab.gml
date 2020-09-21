///disable mouse grab
if hasmouse=true and !mouse_check_button(mb_left) then{
    global.mousefrozen=false;
    hasmouse=false;
    exit;
}
