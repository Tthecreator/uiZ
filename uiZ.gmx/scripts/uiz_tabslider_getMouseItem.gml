var sz = ds_list_size(tablist)
for (var i = 0; i < sz; i++) {
        mouseOv = mouseV;
        mouseV += spacinglist[| i];
        if uiz_getmouse_x() > mouseOv and uiz_getmouse_x() < mouseV then {
            mouseItem=i;
            break;
        }
    }
