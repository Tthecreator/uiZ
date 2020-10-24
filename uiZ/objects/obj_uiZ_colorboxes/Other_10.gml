globalvar colorlist;
if ds_exists(colorlist, ds_type_list) then {
    if uiz_cntn() then {

        var bh1, bh2;
        var sz = ds_list_size(colorlist)
        //draw the boxes in pairs of two
        draw_set_color(c_black)
        var e = -1;
        for (var i = 0; i < bs; i++) {
            bh1 = round(ry + (bh + bb) * i + bb)
            bh2 = min(round(bh1 + bh), rly);
            if bh1 > rly then {
                break;
            }
            e++;
            if e < sz then {
                draw_square(round(rx + width * (1 / 10)), bh1, round(rx + width * (3 / 10)) + 1, bh2 + 1, colorlist[| sz - 1 - e], 1)
                draw_rectangle(round(rx + width * (1 / 10))+1 , bh1+1 ,round( rx + width * (3 / 10))-1, bh2-1, 1)
            } else {
                break;
            }
            e++;
            if e < sz then {
                draw_square(round(rx + width * (4 / 10)), bh1, round(rx + width * (6 / 10)) + 1, bh2 + 1, colorlist[| sz - 1 - e], 1)
                draw_rectangle(round(rx + width * (4 / 10))+1, bh1+1, round(rx + width * (6 / 10))-1, bh2-1, 1)
            } else {
                break;
            }
            e++;
            if e < sz then {
                draw_square(round(rx + width * (7 / 10)), bh1, round(rx + width * (9 / 10)) + 1, bh2 + 1, colorlist[| sz - 1 - e], 1)
                draw_rectangle(round(rx + width * (7 / 10))+1, bh1+1, round(rx + width * (9 / 10))-1, bh2-1, 1)
            } else {
                break;
            }
        }
        //draw selpos
        if selpos >= 0 and selpos < sz then {
            bh1 = round(ry + (bh + bb) * ((selpos) div 3) + bb)
            bh2 = round(bh1 + bh)
            if bh1 <= rly then {
                var inh = color_get_hue(colorlist[| selected])
                var ins = 255;
                if kmouseover > uiz_mouseover then {
                    ins = 100;
                }
                draw_set_color(make_colour_hsv(128 + inh, ins, ins))

                switch (selpos mod 3) {
                    case 0:
                        draw_rectangle(round(rx + width * (1 / 10))+1, bh1+1, round(rx + width * (3 / 10))-1, bh2-1, 1)
                        break;
                    case 1:
                        draw_rectangle(round(rx + width * (4 / 10))+1, bh1+1, round(rx + width * (6 / 10))-1, bh2-1, 1)
                        break;
                    case 2:
                        draw_rectangle(round(rx + width * (7 / 10))+1, bh1+1, round(rx + width * (9 / 10))-1, bh2-1, 1)
                        break;
                }
            }
        }
        uiz_containend()
    }
}