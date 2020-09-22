/// @description get current selection:
if uiz_drawscrollbar_getSelected(scroll_intern)=false /*and uiz_getmouse_x()<rlx-scrollbarw*/ and ds_exists(mainlist, ds_type_list) and ds_exists(sizelist, ds_type_list) then{
    var sz = ds_list_size(mainlist);
    if sz>0 and sz=ds_list_size(sizelist) then{
        var mx = uiz_getmouse_x()-rx;
        var my = uiz_getmouse_y();
        var wat=sizelist[|0];

        
        if snapmouse=-1 then{
            uiz_gridlist_remember();

            if (mx<cur_wat or mx>cur_nwat) then{//check if x mouse is outside current selection
    
                selectedx=-1;
                if mx>0 and mx<width-scrollbarw then{
                    for (var i = 1; i < sz; i++){//loop columns
                        if mx<wat then{
                            selectedx=i-1;
                            cur_wat=wat-sizelist[|i-1];
                            cur_nwat=wat;
                            break;
                        }
                        wat+=sizelist[|i];
                    }
                    
                    if i = sz then{
                        cur_wat=width-scrollbarw-sizelist[|sz-1];
                        cur_nwat=width-scrollbarw;
                        selectedx=sz-1;
                    }
                }else{
                    if keepselection==false then{
                        clickedx=-1;
                        clickedy=-1;
                    }
                }
            }
        }
        if my<yh and global.mousefrozen=false then{
            var switchsel=-1;
            var cm;
            if mx<cur_wat+mousemargin then{
                switchsel=selectedx-1;
                cm=cur_wat
            }
            if mx>cur_nwat-mousemargin then{
                switchsel=selectedx;
                cm=cur_nwat;
            }
            if switchsel>-1 and switchsel<sz then{
                uiz_set_cursor(cr_size_we);
                if kmouseover=uiz_mouseclick then{
                    snapmouse=switchsel;
                    snapmousepos=mx;
                    snapmousesize=sizelist[|switchsel];
                    snapmouseothersize=sizelist[|switchsel+1];
                    
                    selectedx=snapmouse;
                    selectedy = -1;
                    selectedx_old=selectedx+1;
                    cur_wat=cm-snapmousesize
                    
                    if clickedy!=-1 and selectionmode==2 then{
                        uiz_updater_FixViews();
                    }
                    
                    if keepselection==false then{
                        clickedx = -1;
                        clickedy = -1;
                    }
    
                    cur_nwat_old=cm+snapmouseothersize
                    uiz_mouse_freeze();
                }
            }
            else{
                uiz_set_cursor(cr_default);
            }
        }else{
            if my>=yh and global.mousefrozen=false then{
                uiz_set_cursor(cr_default);
            }
        }
        if snapmouse>-1 and snapmouse<sz then{
            var mcha=clamp(mx-snapmousepos,-snapmousesize+h,snapmouseothersize-h);
            var nsz=snapmousesize+mcha;
            var nosz=snapmouseothersize-mcha;
            sizelist[|snapmouse]=nsz;
            sizelist[|snapmouse+1]=nosz;
//            if snapmouse=selectedx then{cur_nwat=cur_wat+nsz;}
//            if snapmouse+1=selectedx then{cur_wat=cur_nwat-nosz;}
            updatemode=4;
            
            if updateNextSnap then{
                updateNextSnap--;
                uiz_updater_FixViews();
            }else{
                if selectionmode=3 then{
                    uiz_updater_FixViews_area_selfmarked(rx+cur_wat,ry,rx+cur_nwat_old-1,rly);
                }else{
                    uiz_updater_FixViews_area(rx+cur_wat,ry,rx+cur_nwat_old-1,rly);
                }
            }
            
            cur_nwat=cur_wat+nsz;
            cur_wat_old=cur_nwat_old-nosz;  
            
            

            if mouse_check_button(mb_left)==false then{
                snapmouse=-1;
                uiz_mouse_unFreeze()
                uiz_set_cursor(cr_default);
                selectedy=-1;exit;
            }
            
        }
        //get selectedy
            if snapmouse=-1 then{
            
            uiz_gridlist_getty(my-yh);

            if (selectedx!=-1 and selectedy!=-1 and ((selectedx_old!=selectedx and (selectionmode!=2)) or (selectedy_old!=selectedy and (selectionmode!=3 or selectedy_old==-1))) and (uiz_selfmarked=false)) then{
                updatemode=selectionmode;
                if kmouseover>=uiz_mouseclick then{
                    clickedx=selectedx;
                    clickedy=selectedy;
                }
                if updateNextSnap then{
                updateNextSnap--;
                uiz_updater_FixViews();
                }else{
                uiz_gridlist_updatecell();
                uiz_gridlist_updateoldcell();
                }
            }else{
                //sdbm("select",selectedx_old,selectedx)
                if (selectedx_old!=selectedx and selectedx=-1) or (selectedy_old!=selectedy and selectedy=-1){
                    //sdbm("deselecting")
                    updatemode=selectionmode;
                    uiz_gridlist_updateoldcell();
                    cur_wat=-1;
                    cur_hat=-1;
                    cur_nwat=-1;
                    cur_nhat=-1;
                    selectedx=-1;
                    selectedy=-1;
                }
            }        
            }
    }
}else{
    
    uiz_gridlist_remember();
    cur_wat=-1;
    cur_hat=-1;
    cur_nwat=-1;
    cur_nhat=-1;
    selectedx=-1;
    selectedy=-1;
    if keepselection==false then{
        clickedx=-1;
        clickedy=-1;
    }
}
//DEBUG
//uiz_updater_FixViews();

/* */
/*  */
