///INTERNAL UIZ SCRIPT DO NOT USE
var i=argument0;

            if onitem = i then{
                uimg = 1;
                var col=selectioncolor;
            }else{
                uimg = 0;
                if decount[i] >= 0 then{
                uimg = 1;
                //sdbm("selectioncolro_old",selectioncolor_old)
                    var fac = (uiz_animation_getFunction(decount[i], graphtype));
                    var col=uiz_functionbar_createcolor(color[i],fac);
                }else{
                if uiz_selfmarked=true then{exit;}
                var col=color[i]
                }
            }
            var p = rx + (isz+marginx)*i+marginx;
            item_color_normal=col;
            uiz_back_at_item(p, ry + marginy ,p + isz, rly - marginy,uimg)
//                draw_square(p, ry + marginy +30,p + isz, rly - marginy, col, 1)            
                
            draw_set_color(c_black)
            draw_set_valign(fa_top)
            draw_set_halign(fa_center)
            draw_set_font(uiz_fnt_dp_20)
            var marry=marginy+bkmar;
            draw_text(p + isz / 2, ry + marry + 3, uiz_getText_contained(text[i], isz))
            var sc = min(isz - 10, 0.5 * (height - marry * 2))
            draw_sprite_ext(sprite[i], uimg, p + isz / 2 - sc / 2, ry + (height - sc) / 2, sc / sprite_get_width(sprite[i]), sc / sprite_get_height(sprite[i]), 0, c_white, 1)
            //draw menuarrow
            if is_string(menu[i]) then {
                draw_set_valign(fa_bottom)
                draw_set_halign(fa_center)
                draw_text(p + isz / 2, rly - marry - 3, uiz_getText_contained(menu[i], isz))
            } else {
                if menu[i] > 0 then {
                    var ya = rly - marry - 5 - isz / 10;
                    var col,sel;
                    if onitem=i and uiz_getmouse_y()>ya then{
                    if mouse_check_button(mb_left) then{
                    sel = 2;
                    col = (trainglecolor_in)}else{
                    sel = 1;
                    col = (trainglecolor_over)
                    }}else{
                    sel = 0;
                    col = (trainglecolor)
                    }
                    draw_sprite_ext(trianglesprite,sel,p + isz / 2 - isz / 20,ya,isz/sprite_get_width(trianglesprite)/10,isz/sprite_get_height(trianglesprite)/10,0,col,alpha);

                    
                }
            }
