var cl = curid.children;
var textheight = 3 + string_height(string_hash_to_newline("|"))
if ds_exists(cl, ds_type_list) then{
deepness++;
for(var i=0;i<ds_list_size(cl);i++){
    curid=cl[|i];
    
    
    
    if global.mouseoverwindow=window and uiz_getmouse_y()>cury and uiz_getmouse_y()<cury+textheight then{
        draw_set_alpha(0.6);
        draw_set_color(c_blue);
        draw_rectangle(curid.rx,curid.ry,curid.rlx,curid.iy,false)
        draw_rectangle(curid.rx,curid.ily,curid.rlx,curid.rly,false)
        draw_rectangle(curid.rx,curid.iy,curid.ix,curid.ily,false)
        draw_rectangle(curid.ilx,curid.iy,curid.rlx,curid.ily,false)        
        draw_set_color(c_green);
        draw_rectangle(curid.ix,curid.iy,curid.ilx,curid.ily,false)
        draw_set_color(c_yellow);
        draw_rectangle(curid.cntnx,curid.cntny,curid.cntnlx,curid.cntnly,false);
        
        draw_set_alpha(1);

        draw_set_color(c_blue);
        draw_rectangle(curid.rx,curid.ry,curid.rlx,curid.rly,true)
        draw_set_color(c_green);
        draw_rectangle(curid.ix,curid.iy,curid.ilx,curid.ily,true)
        draw_set_color(c_red);
        draw_rectangle(curid.rx-curid.leftmargin,curid.ry-curid.topmargin,curid.rlx+curid.rightmargin,curid.rly+curid.bottommargin,true)
    }else{
    draw_set_color(c_black);
    }
    draw_text(window.ix,cury,string_hash_to_newline(string_repeat(" - ",deepness)+object_get_name(curid.object_index)+" ("+string(curid)+") dep:"+string(curid.depth)))
    cury+=textheight;
    if cury<window.ily then{
        event_user(0);
    }
}
deepness--;
}

