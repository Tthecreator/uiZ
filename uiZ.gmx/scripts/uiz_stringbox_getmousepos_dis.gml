//check the position of where the mouse is
var typepos_dis,typepos_dis_px;
if uiz_getmouse_x() > ix+str_dis_width-str_dis_width_last then{
    typepos_dis = str_dis_size;
    typepos_dis_px = ix+str_dis_width;
} else {
typepos_dis=0;
typepos_dis_px=ix;
    //check position of mouse
    var w = 0;
    for (var i = 1; i <= str_dis_size; i++) {
        var cw=string_width(string_char_at(str_dis,i));
        if ix+w+cw/2 > uiz_getmouse_x() then {
            typepos_dis = i-1;
            typepos_dis_px = ix+w;
            break;
        }
        w+=cw;
    }
}

ret[1]=typepos_dis_px;
ret[0]=typepos_dis;
return ret;
