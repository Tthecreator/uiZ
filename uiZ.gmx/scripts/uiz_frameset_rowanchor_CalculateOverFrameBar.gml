var h =0;
for (var i = 0; i < array_length_1d(frameat); ++i) {
    if frameat[i].rly < uiz_getmouse_y() then {
        overframebar = i - 1;
        break;
    }
}
overframebar = max(overframebar, 0);
return overframebar;
