/// @description draw back
if uiz_cntn() then {
    //draw_square(rx,ry,rlx,rly,c_black,alpha)
    //draw items
    if font>-1 then{draw_set_font(font)}
    draw_set_valign(fa_center);
    draw_set_halign(fa_left);
    bkcol=color_normal;
    bkmar=margin_normal;
    bkspr=sprite_normal;
    uiz_back();
    ubkmar = bkmar;
    if uselist != -1 and ds_exists(uselist, ds_type_list) then {
        var sz = ds_list_size(uselist)
        /*if ds_exists(enabledlist, ds_type_list) then {
            var esz = ds_list_size(enabledlist)
        }*/

        if updateselection = true and uiz_selfmarked = true then {
        //sdbm("updating mousemen",selection,oldselection)
            if selection != oldselection and oldselection!=-1 then {
                uiz_mousemenu_drawitem(oldselection, sel_oy, 0)
            }
            uiz_mousemenu_drawitem(selection, sel_y, selectioncol)
        } else {
            var h = ubkmar+ry;
             var th, txt;
            for (var i = scroll; i < sz; i++) {
                var ucolor;
                if (i == selection) then{
                    ucolor = selectioncol;
                }else{
                    ucolor = 0;
                }
                h += margin + uiz_mousemenu_drawitem(i, h, ucolor)
            }
        }
    }
    draw_set_valign(fa_top);
    updateselection = false;
    uiz_containend()
}

/* */
/*  */
