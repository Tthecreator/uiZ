updated = false;
if uiz_cntn() then {
    //put draw code here
    var sz = ds_list_size(tablist)
    if ds_exists(tablist, ds_type_list) and sz = ds_list_size(spacinglist) then {
        if font > -1 then {
            draw_set_font(font)
        }
        draw_set_valign(valign)
        draw_set_halign(halign)
        draw_set_color(textcolor)
        if uiz_selfmarked then{
            //sdbm("drawing selfmarked");
            var drawnSelectionSquare=false;
            if mouseItem!=lastMouseItem then{
                if mouseItem!=-1 then{
                    drawnSelectionSquare=true;
                    draw_square(mouseOv,ry,mouseV,rly,mouseoncolor,mouseonalpha*alpha);
                    draw_set_color(textcolor)
                    draw_set_alpha(alpha);
                    uiz_tabslider_drawtab(mouseItem,mouseOv);    
                }
                if lastMouseItem!=-1 then{
                    uiz_tabslider_drawtab(lastMouseItem,lastMouseOv);
                }
            }
        
            if updateBar || mouseOv = newpos || lastMouseOv = newpos then{
            //check to draw back selection square
            if (drawnSelectionSquare=false and updateBar and ((mouseOv>=newpos && mouseOv<=newpos+newwidth) || (mouseV>=newpos && mouseV<=newpos+newwidth))){
                draw_square(mouseOv,tabY,mouseV,rly,mouseoncolor,mouseonalpha*alpha);
            }
                updateBar=false;
                draw_square(newpos, tabY, newpos + newwidth, rly, markcolor, alpha)
                //sdbm("trying to draw square",newpos,newwidth);
            }
                //draw_square(rx,ry,rlx,rly,c_green,.5);
        }else{
                    //sdbm("drawing normal");
        var v = rx;
        if mouseItem!=-1 then{
            draw_square(mouseOv,ry,mouseV,rly,mouseoncolor,mouseonalpha*alpha);
        }
        draw_set_color(textcolor);
        draw_set_alpha(alpha);
        for (var i = 0; i < sz; i++) {
            uiz_tabslider_drawtab(i,v);
            v += spacinglist[| i];
        }
        
        //draw_set_color(markcolor)
        draw_square(newpos, tabY, newpos + newwidth, rly, markcolor, alpha)
        //sdbm("trying to draw square 2",newpos,newwidth);
        //draw_rectangle(newpos, rly - uiz_getposy_self(marksize, marksizetype), newpos + newwidth, rly, 0)
        //draw_set_color(textcolor)
        
        }
    }

    uiz_containend()
}


/*
    if ds_exists(tablist, ds_type_list) and ds_list_size(tablist) = ds_list_size(spacinglist) then {
        var sz = ds_list_size(tablist)
        if font > -1 then {
            draw_set_font(font)
        }
        draw_set_valign(valign)
        draw_set_halign(halign)
        draw_set_color(textcolor)
        var v = rx;
        for (var i = 0; i < sz; i++) {
            draw_text(v + spacinglist[| i] * (halign / 2), ry + height * (valign / 2), uiz_getText_contained(tablist[| i], spacinglist[| i]));
            var ov = v;
            v += spacinglist[| i];
            if uiz_getmouse_x() > ov and uiz_getmouse_x() < v then {
                draw_square(ov, ry, v, rly, uiz_km_retval(c_white, mouseoncolor, mouseincolor), alpha * uiz_km_retval(c_white, mouseonalpha, mouseinalpha))
                if kmouseover = 4 then {
                    value = i;
                    updated = true;
                }
            }
            if i = value then {
                draw_set_color(markcolor)
                draw_rectangle(newpos, rly - uiz_getposy_self(marksize, marksizetype), newpos + newwidth, rly, 0)
                draw_set_color(textcolor)
            }
        }
        //draw_debugpoint(dbg1,rly,c_red)
        //draw_debugpoint(dbg2,rly,c_blue)
    }

/* */
/*  */
