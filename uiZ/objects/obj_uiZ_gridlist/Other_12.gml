switch(kmouseover){
case 0:
scrolling=false;
uiz_gridlist_remember();
updatemode=selectionmode;
//sdbm("waddup?",updatemode,selectedx,selectedy,selectedx_old,selectedy_old, width,height,"nwat",cur_nwat_old, cur_nhat_old, cur_wat_old, cur_nwat_old);
uiz_gridlist_updateoldcell();
selectedx=-1;
selectedy=-1;
if keepselection==false then{
    clickedx=-1;
    clickedy=-1;
}
cur_wat=-1;
cur_hat=-1;
cur_nwat=-1;
cur_nhat=-1;
break;
case uiz_mousepressed:
    //if uiz_drawscrollbar_getselected(scroll)=false then{
    
    if snapmouse=-1 and (clickedy!=-1 or updatemode!=3) and selectedx!=-1 and (selectedy!=-1 or selectionmode==3) and uiz_getmouse_y()>yh then{
        //sdbm("setting clicked: ",selectedx,selectedy);
        clickedx=selectedx;
        clickedy=selectedy;
        updatemode=selectionmode;
        if uiz_selfmarked=false then{
        uiz_gridlist_updatecell();}
    }
    
    //}
break;
case uiz_mousereleased:
    //if uiz_drawscrollbar_getselected(scroll)=false then{
    if (clickedx!=-1 or (clickedy!=-1 and updatemode!=3)) and keepselection == false then{
    clickedx=-1;
    clickedy=-1;
    updatemode=selectionmode;
    if uiz_selfmarked=false then{
    uiz_gridlist_updatecell();
    }
    }else{
        if keepselection then{
            uiz_updater_FixViews();
        }
    }
break;
}

if (kmouseover<=uiz_mouseover or kmouseover=uiz_mousereleased) and snapmouse>-1 then{
snapmouse=-1;
uiz_mouse_unFreeze()
}

