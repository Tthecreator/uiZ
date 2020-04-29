var arr;
arr[0]=argument0;
if live_call_ext(arr) return live_result;
var t = argument0;
var i=0;
with(t) {
    var ow = width - scrollbarw;
    var orx = rx;
    var orlx = rlx;

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
        scrollheight = (1+uiz_gridlist_getheight()) * h - height;//+1 for topbar -height to offset visible area
        if scrollheight < scroll then {
            scroll = scrollheight;
            uiz_drawscrollbar_setvalue(scroll_intern, scroll);
        }
        if scrollheight > 0 and enablescroll = true then {
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

        //check snapmouse
        if snapmouse!=-1 and (orx!=rx or orlx!=rlx) then{
            /*
            snapmousepos=uiz_getmouse_x()-rx;
            snapmousesize=sizelist[|snapmouse];
            snapmouseothersize=sizelist[|snapmouse+1];
            cur_wat = rx;
            for(var i=0;i<snapmouse;++i){
                cur_wat += sizelist[|i];
            }
            cur_nwat = cur_wat + sizelist[|snapmouse];
            cur_wat_old = cur_nwat;
            cur_nwat_old = cur_wat_old + sizelist[|snapmouse+1]
            */
            
            snapmouse=-1;
            uiz_mouse_unfreeze()
            uiz_set_cursor(cr_default);
            selectedy=-1;
        }
        
        selectedx=-1;
        selectedy=-1;
        cur_wat=-1;
        cur_hat=-1;
        cur_nwat=-1;
        cur_nhat=-1;
        selectedx_old=-1;
        selectedy_old=-1;


        if doscroll = true then {
            //uiz_drawscrollbar_vertical_step(rlx - scrollbarw + 1, ry, rlx, rly, scroll_intern, scrollheight, true, h, scrollbarAnimation, scrollbarAnimationTime);
            scroll = uiz_drawscrollbar_getvalue(scroll_intern);
            if scroll>scrollheight then{
                scroll = scrollheight;
                uiz_drawscrollbar_setvalue(scroll_intern,scrollheight);
            }
            if scroll<0 then{
                scroll = 0;
                uiz_drawscrollbar_setvalue(scroll_intern,0);
            }
            uiz_gridlist_startfinish();
        } else {
            scroll_start = 0;
            scroll_finish = nsz;
        }
        uiz_updater_FixViews();
    }
}
