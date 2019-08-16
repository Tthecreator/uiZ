var t = argument0;
with(t) {
    var ow = width;
    uiz_fix_Base();

   uiz_gridlist_generateSizeList();
        var nsz = 0;
        if ds_exists(maingrid, ds_type_grid) then {
            if orientation = 0 then {
                var nsz = ds_grid_height(maingrid)
            } else {
                var nsz = ds_grid_width(maingrid)
            }
        }
        if font > -1 then {
            draw_set_font(font)
        }
        var lsz = string_height("|") + listheightmargin
        h = uiz_getposy_self(barsize, barsizetype)
        
        if ds_exists(maingrid, ds_type_grid) then{
            usegrid = true;
        
        scrollbarw = uiz_getposx_self(scrollbarwidth,scrollbarwidthtype);
        scrollheight = uiz_gridlist_getheight()*h-height;
        if scrollheight<scroll then{
            scroll=scrollheight;
            uiz_drawscrollbar_setvalue(scroll_intern,scroll);
        }

    if doscroll = true then {
        //if ds_exists(sizelist,ds_type_list) then{
        var sz = ds_list_size(sizelist)
        var fac = width / (width - scrollbarw);
        var kgq = false;
        if width - scrollbarw > 0 then {
            for (var i = 0; i < sz; i++) {
                if sizelist[| i] = 0 then {
                    kgq = true;
                }
                sizelist[| i] *= fac;
            }
        } else {
            kgq = true
        }
        if kgq = true then {
            //reset list
            for (var i = 0; i < sz; i++) {
                sizelist[| i] = width / sz;
            }
            doscroll = false
        }

        doscroll = false
    }



    if ds_exists(sizelist, ds_type_list) and initialized=true then {
        var sz = ds_list_size(sizelist)
        var fac = width / ow;
        var kgq = false;
        if ow > 0 then {
            for (var i = 0; i < sz; i++) {
                if sizelist[| i] = 0 then {
                    kgq = true;
                }
                sizelist[| i] *= fac;
            }
        } else {
            kgq = true
        }
        if kgq = true then {
            //reset list
            for (var i = 0; i < sz; i++) {
                sizelist[| i] = width / sz;
            }
        }
    }else{
        initialized=true;
    }
    var disab = false;
    if enablescroll = true then {
        //check for scrollbar



        if h + lsz * nsz > height then {
            scrolllines = max(0, (h + lsz * nsz - height) / lsz)
            //enable the scrollbar
            if doscroll = false then {
                doscroll = true
                scroll = 0
                if ds_exists(sizelist, ds_type_list) then {
                    var sz = ds_list_size(sizelist)
                    var fac = (width - scrollbarw) / width;
                    var kgq = false;
                    if width - scrollbarw > 0 then {
                        for (var i = 0; i < sz; i++) {
                            if sizelist[| i] = 0 then {
                                kgq = true;
                            }
                            sizelist[| i] *= fac;
                        }
                    } else {
                        kgq = true
                    }
                    if kgq = true then {
                        //reset list
                        for (var i = 0; i < sz; i++) {
                            sizelist[| i] = width / sz;
                        }
                        doscroll = false
                    }
                }

            }

        } else {
            //disable the scrollbar
            disab = true;
        }
    } else {
        //disable the scrollbar
        disab = true;
    }
    if disab = true and doscroll = true then {
        if ds_exists(sizelist, ds_type_list) then {
            var sz = ds_list_size(sizelist)
            var fac = width / (width - scrollbarw);
            var kgq = false;
            if width - scrollbarw > 0 then {
                for (var i = 0; i < sz; i++) {
                    if sizelist[| i] = 0 then {
                        kgq = true;
                    }
                    sizelist[| i] *= fac;
                }
            } else {
                kgq = true
            }
            if kgq = true then {
                //reset list
                for (var i = 0; i < sz; i++) {
                    sizelist[| i] = width / sz;
                }
                doscroll = false
            }
        }
        doscroll = false
    }
    yh=h+ry;
    if doscroll=false then{
        scrollbarw=0;
    }
    }
    if doscroll=true then{
        scroll_intern=uiz_drawscrollbar_vertical_step(rlx-scrollbarw+1,ry,rlx,rly,scroll_intern,scrollheight,true,h);        
        scroll=uiz_drawscrollbar_getvalue(scroll_intern)
        uiz_gridlist_startfinish();
    }else{
        scroll_start=0;
        scroll_finish=nsz;
    }
}
