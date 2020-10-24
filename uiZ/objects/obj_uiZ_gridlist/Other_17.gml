/// @description handle scrollbar
//if doscroll=true and (mx>width-scrollbarw or uiz_mouse_isFrozen_on(id)) then{
if doscroll=true then{
    uiz_drawscrollbar_vertical_step(rlx-scrollbarw+1,ry,rlx,rly,scroll_intern,scrollheight,true,h*scrollspeed,scrollbarAnimation, scrollbarAnimationTime);

    scroll=uiz_drawscrollbar_getValue(scroll_intern);
    uiz_gridlist_startfinish();
    
    //check if scroll has changed
    if scroll!=scroll_old then{
        uiz_updater_FixView_NoMove();
        scrolling=true;
        cur_hat  +=(scroll_old-scroll);
        cur_nhat +=(scroll_old-scroll);
        cur_hat_old  +=(scroll_old-scroll);
        cur_nhat_old +=(scroll_old-scroll);
        scroll_old=scroll;
        updateNextSnap=1;
        
    }else{
        scrolling=false;
    }

}

