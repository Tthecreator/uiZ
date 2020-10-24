if uiz_cntn() then {
    //draw background
    if hasbackground then{
    uiz_back()
    }
	
    //check list
    draw_set_halign(fa_left)
    draw_set_valign(fa_center)
    if ds_exists(mainlist, ds_type_list) and ds_exists(sizelist, ds_type_list) and ds_exists(maingrid,ds_type_grid) then{
        uiz_back_captureSettings();
        var sz = ds_list_size(mainlist)
        if uiz_selfmarked=true and scrolling=false then{
        switch(updatemode){
            case 1://single cell
                if cur_wat>-1 and (cur_hat>-1 or cur_nhat>-1) then{
                    if clickedx == selectedx and clickedy ==  selectedy then{
                        uiz_gridlist_drawsquareback_cell(selectionincolor,selectioninalpha);
                    }else{
                        uiz_gridlist_drawsquareback_cell(selectiononcolor,selectiononalpha);
                    }
                        uiz_gridlist_drawcell(selectedx,selectedy,rx+cur_wat,yh+cur_hat,sizelist[|selectedx]);
                }
                if cur_nwat_old>-1 and cur_nhat_old>-1 and (selectedx!=selectedx_old or selectedy!=selectedy_old) then{
                    if clickedy == selectedy_old and clickedx == selectedx_old then{
                            draw_square(rx+cur_wat_old,yh+cur_hat_old,rx+cur_nwat_old,yh+cur_nhat_old+1,selectionincolor,selectioninalpha*alpha);
                    }else{
                            draw_square(rx+cur_wat_old,yh+cur_hat_old,rx+cur_nwat_old,yh+cur_nhat_old+1,normalcolor,normalalpha*alpha);
                    }
                    uiz_gridlist_drawcell(selectedx_old,selectedy_old,rx+cur_wat_old,yh+cur_hat_old,sizelist[|selectedx_old]);
                }
            break;
            case 2://row
                if (cur_hat>-1 or cur_nhat>-1) then{
                    if clickedy == selectedy then{
                        uiz_gridlist_drawsquareback_row(selectionincolor,selectioninalpha);
                    }else{
                        uiz_gridlist_drawsquareback_row(selectiononcolor,selectiononalpha);
                    }
                    uiz_gridlist_drawrow(selectedy,rx,yh+cur_hat)
                    }
                    //sdbm("seke",selectedy,selectedy_old,selectedx,selectedx_old,uiz_getmouse_x()-rx,cur_wat,cur_nwat,width)
                    if (cur_hat_old>-1 or cur_nhat_old>-1) and selectedy!=selectedy_old and selectedy_old!=-1 then{
                        if clickedy == selectedy_old then{
                            draw_square(rx,yh+cur_hat_old,rlx-scrollbarw,yh+cur_nhat_old+1,selectionincolor,selectioninalpha*alpha);
                        }else{
                            draw_square(rx,yh+cur_hat_old,rlx-scrollbarw,yh+cur_nhat_old+1,normalcolor,normalalpha*alpha);        
                        }
                        //draw_square(rx,yh+cur_hat_old,rlx-scrollbarw,yh+cur_nhat_old,uiz_gridlist_randomcolor(50,-1),normalalpha*alpha);        
                        uiz_gridlist_drawrow(selectedy_old,rx,yh+cur_hat_old)
                }
            break;
            case 3:case 4://column
                if(cur_wat>-1 or cur_nwat>-1)then{
                    if updatemode=3 then{
                    if selectedy=-1 then{
                        uiz_gridlist_drawsquareback_col(normalcolor,normalalpha);
                    }else{
                        if clickedx == selectedx and clickedy!=-1 then{
                            uiz_gridlist_drawsquareback_col(selectionincolor,selectioninalpha);
                        }else{
                            uiz_gridlist_drawsquareback_col(selectiononcolor,selectiononalpha);
                        }
                    }
                    uiz_gridlist_drawcolumn(selectedx,rx+cur_wat,yh,cur_nwat-cur_wat);
                    }else if updatemode=4 then{
                        if clickedx == selectedx and clickedy!=-1 then{
                            uiz_gridlist_drawsquareback_col(selectionincolor,selectioninalpha);
                        }else{
                            uiz_gridlist_drawsquareback_col(normalcolor,normalalpha);
                        }
                        uiz_gridlist_drawcolumn(selectedx,rx+cur_wat,yh,cur_nwat-cur_wat);
                        uiz_gridlist_drawTopbar(rx+cur_wat,rx+cur_nwat,yh,selectedx);                    
                    }
                    
                }

                if (selectedx_old!=selectedx) and (cur_wat_old>-1 or cur_nwat_old>-1) then{
                    if clickedx == selectedx_old and updatemode=3 then{
                            draw_square(rx+cur_wat_old,yh,rx+cur_nwat_old,rly,selectionincolor,selectioninalpha*alpha);
                    }else{
                        if clickedx == selectedx_old and updatemode=4 then{
                                draw_square(rx+cur_wat_old,yh,rx+cur_nwat_old,rly,selectionincolor,selectioninalpha*alpha);
                        }else{
                                draw_square(rx+cur_wat_old,yh,rx+cur_nwat_old,rly,normalcolor,normalalpha*alpha);
                        }
                    }
                    uiz_gridlist_drawcolumn(selectedx_old,rx+cur_wat_old,yh,cur_nwat_old-cur_wat_old);
                    uiz_gridlist_drawTopbar(rx+cur_wat_old,rx+cur_nwat_old,yh,selectedx_old);
                }
            break;
            }
        }else{
            //loop trough list
            
            var wat = rx;//the current x of the current column

            if font > -1 then {
                draw_set_font(font)
            }
            
            uiz_gridlist_drawsquareback_general();
            var nwat, wat;
            for (var i = 0; i < sz; i++) {
                nwat = wat + sizelist[| i];                
                uiz_gridlist_drawcolumn(i,wat,yh,nwat-wat);
                uiz_gridlist_drawTopbar(wat,nwat,yh,i);
                var wat=nwat;//set new first x to old last x.
            }

        }
        
        if doscroll=true then{
            //draw scrollbar
            uiz_drawscrollbar_vertical_draw(rlx-scrollbarw+1,ry,rlx,rly,scrollbarsprite,scrollbarcolor,scrollbarbacktexmode,scroll_intern,scrollheight);
        }
        
        uiz_back_resumeSettings();
        
}

updatemode=0;
uiz_containend();               
}

