

    if font > -1 then {
        draw_set_font(font)
    }
    //draw back
    if typing = 1 then {
        n = 3
    } else {
        if kmouseover = 0 then {
            var n = 0
        } else {
            n = 1
        }
    }
    uiz_back(n)

    draw_set_valign(fa_middle)
    draw_set_halign(fa_left)
    draw_set_color(textcolor)
    var y_mid = iy+iheight/2;
    //draw text
    if hasselection=true then{
    if uiz_selfmarked==true and selfmarked_text==true then{
        //sdbm("drawing",sel_str_beg_m,sel_str_mid,sel_str_end_m)
        draw_text(selpos_dis_max_px_bound, y_mid, sel_str_end_m);
        draw_set_halign(fa_right)
        draw_text(selpos_dis_min_px_bound, y_mid, sel_str_beg_m);
        if sel_beg_fix!="" and sel_str_beg_m=="" then{
        draw_text(selpos_dis_min_px_bound, y_mid, sel_beg_fix);
        }
        sel_beg_fix="";
        draw_set_halign(fa_left)
        if selpos_dis_min!=selpos_dis_max then{
        draw_square(selpos_dis_min_px_bound+1,iy,selpos_dis_max_px_bound-1,ily,selectbackcolor,alpha);//draw selector square background
        }
        draw_set_color(selecttextcolor);
        draw_text(selpos_dis_min_px_bound,y_mid,sel_str_mid);
        sel_str_end_m="";
        sel_str_beg_m="";
        
    }else{
        draw_text(selpos_dis_max_px_bound,y_mid,sel_str_end);
        draw_set_halign(fa_right)
        draw_text(selpos_dis_min_px_bound,y_mid,sel_str_beg);
        draw_set_halign(fa_left)
        if selpos_dis_min!=selpos_dis_max then{
        draw_square(selpos_dis_min_px_bound+1,iy,selpos_dis_max_px_bound-1,ily,selectbackcolor,alpha);//draw selector square background
        }
        draw_set_color(selecttextcolor);
        draw_text(selpos_dis_min_px_bound,y_mid,sel_str_mid);
        }
    }else{
    //draw vanilla text
        draw_text(ix,y_mid,str_dis);
    }
    
    


selfmarked_text = false;
