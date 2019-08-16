var t = argument0;
var i=0;
with(t) {
    var ow = width - scrollbarw;

    uiz_fix_Base();
    if ds_exists(maingrid, ds_type_grid) then {

        uiz_gridlist_generateSizeList();

        if orientation = 0 then {
            var nsz = ds_grid_height(maingrid)
            var isz = ds_grid_width(maingrid);
        } else {
            var nsz = ds_grid_width(maingrid)
            var isz = ds_grid_height(maingrid);
        }

        if font > -1 then {
            draw_set_font(font)
        }
        var lsz = string_height("|") + listheightmargin
        var oh = h;
        h = uiz_getposy_self(barsize, barsizetype)

        usegrid = true;

        scrollbarw = uiz_getposx_self(scrollbarwidth, scrollbarwidthtype);
        scrollheight = uiz_gridlist_getheight() * h - height;
        if scrollheight < scroll then {
            scroll = scrollheight;
            uiz_drawscrollbar_setvalue(scroll_intern, scroll);
        }

        if scrollheight > height and enablescroll = true then {
            //enable scrollbar
            scrolllines = max(0, (h + lsz * nsz - height) / lsz)
            doscroll = true;
        } else {
            scrollbarw = 0;
            scrolllines = 0;
            scroll_start=0;
            scroll=0;
            doscroll = false;
        }

        yh = h + ry;
        
        var nw = width - scrollbarw;

        var kgq = false;//remembers if the list has to be completely reset.
        var sz = ds_list_size(sizelist)
        if sz!=isz then{//not the same size as the grid
            while(sz>isz){
                ds_list_delete(sizelist,sz-1)
                sz--;
            }
            while(sz<isz){
                ds_list_add(sizelist,0);
                sz++;
            }
            kgq=true;
        }
        if ow<1 or initialized=false or nw<h*sz then{
        kgq=true;
        initialized=true;
        }
        if kgq=false then{
        var itsz=min(h,nw/sz);
        var oitsz=min(oh,ow/sz);
        var fac = (nw-itsz*spritecount)/(ow-oitsz*spritecount);
//        var fac = (nw-h*spritecount) / (ow-h*spritecount);
        if fac != 1 then{

            if itsz<h or oitsz<oh then{
                 
                //spritecount=0;
                for (var i = 0; i < sz; i++) {                
                    if sizelist[| i] < 1 then{
                    kgq = true;
                    break;
                    }
                    t = mainlist[|i];
                    if is_real(t) and sprite_exists(t) then{//is sprite
                        sizelist[| i]=itsz;
                        //spritecount++;                         
                    }
                }
                
                
            }
            //sdbm("itsz",itsz,oitsz,oh,ow/sz);
            //var fac= nw/ow;
            //sdbm("madarchod",spritecount)
            //fac = (nw-itsz*spritecount)/(ow-oitsz*spritecount);
            if nw > 0 and kgq=false then{
                for (var i = 0; i < sz; i++){
                    if sizelist[| i] < 1 then{
                    kgq = true;
                    break;
                    }
                    t = mainlist[|i];
                    if !is_real(t) or !sprite_exists(t) then{//is not sprite
                    sizelist[| i] *= fac;
                    }
                }
            } else {
                kgq = true
            }

        }
        }
        if kgq = true then{
            //reset list
            
            var itsz=nw/sz;
            if itsz>h then{
            var itsz=h;
            spritecount=0;
            for (var i = 0; i < sz; i++){
                t = mainlist[|i];
                if is_real(t) and sprite_exists(t) then{//is sprite
                    sizelist[| i]=itsz;
                    spritecount++;
                }
            }
            var widthleft=nw-spritecount*itsz;
            var itsz=widthleft/(sz-spritecount);
            for (var i = 0; i < sz; i++){
                t = mainlist[|i];
                if !is_real(t) or !sprite_exists(t) then{//is not sprite
                sizelist[| i] = itsz;
                }
            }
            }else{
            var itsz=nw/sz;
            for (var i = 0; i < sz; i++){
                sizelist[| i] = itsz;
            }
            }
        }



        if doscroll = true then {
            uiz_drawscrollbar_vertical_step(rlx - scrollbarw + 1, ry, rlx, rly, scroll_intern, scrollheight, true, h, scrollbarAnimation, scrollbarAnimationTime);
            scroll = uiz_drawscrollbar_getvalue(scroll_intern)
            uiz_gridlist_startfinish();
        } else {
            scroll_start = 0;
            scroll_finish = nsz;
        }
    }
}
