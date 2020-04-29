if live_call() return live_result;
switch(selectionmode){
    case 0:
        draw_square(rx,yh,rlx-scrollbarw,rly,normalcolor,normalalpha*alpha);
    break;
    case 1://single cell
        var y1 = yh - scroll;
        for(var i=scroll_start;i<scroll_finish;i++){
            if selectedy==i then{
                //draw non-selected bit
                var y2 = yh - scroll + (h*i)
                if y2!=y1 then{
                    draw_square(rx,y1,rlx-scrollbarw,y2-1,normalcolor,normalalpha*alpha);//draw normal
                }
                y1 = y2;
                
                //draw selected bit
                y2 += h;
                if selectedy == clickedy then{
                    if selectedx != clickedx then{
                        //draw selection on
                        if selectedx < ds_list_size(mainlist)-1 then{
                            draw_square(rx+cur_wat,y1,rx+cur_nwat-1,y2-1,selectiononcolor,selectiononalpha*alpha);
                        }else{
                            draw_square(rx+cur_wat,y1,rx+cur_nwat,y2-1,selectiononcolor,selectiononalpha*alpha);
                        }
                        //get x values
                        var x1 = rx;
                        var sz = min(clickedx,ds_list_size(sizelist)-1);
                        for(var e=0;e < sz;e++){
                            x1+=sizelist[|e];
                        }
                        var x2 = x1 + sizelist[|sz];
                        
                        //draw selection in
                        if clickedx < ds_list_size(mainlist)-1 then{
                            draw_square(x1,y1,x2-1,y2-1,selectionincolor,selectioninalpha*alpha);
                        }else{
                            draw_square(x1,y1,x2,y2-1,selectionincolor,selectioninalpha*alpha);
                        }
                        
                        if selectedx < ds_list_size(mainlist)-1 and clickedx < ds_list_size(mainlist)-1 then{
                            draw_square(max(rx+cur_nwat,x2),y1,rlx-scrollbarw,y2-1,normalcolor,normalalpha*alpha);//right of col
                        }
                        if selectedx>0 and clickedx>0 then{
                            draw_square(rx,y1,min(rx+cur_wat,x1)-1,y2-1,normalcolor,normalalpha*alpha);//left of col
                        }
                    }else{
                        if clickedx < ds_list_size(mainlist)-1 then{
                            draw_square(rx+cur_wat,y1,rx+cur_nwat-1,y2-1,selectionincolor,selectioninalpha*alpha);
                        }else{
                            draw_square(rx+cur_wat,y1,rx+cur_nwat,y2-1,selectionincolor,selectioninalpha*alpha);
                        }
                        if selectedx < ds_list_size(mainlist)-1 then{
                            draw_square(rx+cur_nwat,y1,rlx-scrollbarw,y2-1,normalcolor,normalalpha*alpha);//right of col
                        }
                        if selectedx>0 then{
                            draw_square(rx,y1,rx+cur_wat-1,y2-1,normalcolor,normalalpha*alpha);//left of col
                        }
                    }
                }else{
                    if selectedx < ds_list_size(mainlist)-1 then{
                        draw_square(rx+cur_wat,y1,rx+cur_nwat-1,y2-1,selectiononcolor,selectiononalpha*alpha);
                    }else{
                        draw_square(rx+cur_wat,y1,rx+cur_nwat,y2-1,selectiononcolor,selectiononalpha*alpha);
                    }
                    if selectedx < ds_list_size(mainlist)-1 then{
                        draw_square(rx+cur_nwat,y1,rlx-scrollbarw,y2-1,normalcolor,normalalpha*alpha);//right of col
                    }
                    if selectedx>0 then{
                        draw_square(rx,y1,rx+cur_wat-1,y2-1,normalcolor,normalalpha*alpha);//left of col
                    }
                }
                y1 = y2;
                continue;
            }
            if clickedy==i then{
                //draw non-selected bit
                var y2 = yh - scroll + (h*i)
                if y2!=y1 then{
                    draw_square(rx,y1,rlx-scrollbarw,y2-1,normalcolor,normalalpha*alpha);//draw normal
                }
                y1 = y2;
                
                //draw selected bit
                y2 += h;
                var x1 = rx;
                var sz = min(clickedx,ds_list_size(sizelist)-1);
                for(var e=0;e < sz;e++){
                    x1+=sizelist[|e];
                }
                var x2 = x1 + sizelist[|sz];
                if clickedx < ds_list_size(mainlist)-1 then{
                    draw_square(x1,y1,x2-1,y2-1,selectionincolor,selectioninalpha*alpha);
                }else{
                    draw_square(x1,y1,x2,y2-1,selectionincolor,selectioninalpha*alpha);
                }
                if clickedx < ds_list_size(mainlist)-1 then{
                    draw_square(x2,y1,rlx-scrollbarw,y2-1,normalcolor,normalalpha*alpha);//right of col
                }
                if clickedx>0 then{
                    draw_square(rx,y1,x1-1,y2-1,normalcolor,normalalpha*alpha);//left of col
                }
                y1 = y2;
            }
        }
        if clickedy!=scroll_finish-1 then{
            //draw non-selected bit
            draw_square(rx,y1,rlx-scrollbarw,rly,normalcolor,normalalpha*alpha);
        }
        break;
    case 2://row
        var y1 = yh - scroll;
        for(var i=scroll_start;i<scroll_finish;i++){
            if selectedy==i and selectedx>=0 then{
                //draw non-selected bit
                var y2 = yh - scroll + (h*i)
                if y2!=y1 then{
                    draw_square(rx,y1,rlx-scrollbarw,y2-1,normalcolor,normalalpha*alpha);//draw normal
                }
                y1 = y2;
                
                //draw selected bit
                y2 += h;
                if selectedy == clickedy then{
                    draw_square(rx,y1,rlx-scrollbarw,y2-1,selectionincolor,selectioninalpha*alpha);
                }else{
                    draw_square(rx,y1,rlx-scrollbarw,y2-1,selectiononcolor,selectiononalpha*alpha);
                }
                y1 = y2;
                continue;
            }
            if clickedy==i then{
                //draw non-selected bit
                var y2 = yh - scroll + (h*i)
                if y2!=y1 then{
                    draw_square(rx,y1,rlx-scrollbarw,y2-1,normalcolor,normalalpha*alpha);//draw normal
                }
                y1 = y2;
                
                //draw selected bit
                y2 += h;
                draw_square(rx,y1,rlx-scrollbarw,y2-1,selectionincolor,selectioninalpha*alpha);
                y1 = y2;
            }
        }
        if clickedy!=scroll_finish-1 then{
            //draw non-selected bit
            draw_square(rx,y1,rlx-scrollbarw,rly,normalcolor,normalalpha*alpha);
        }
    break;
    case 3://column
        var x1 = rx;
        var x2 = x1;
        var sz = ds_list_size(mainlist);
        for(var i=0;i<sz;i++){
            x2 = x1 + sizelist[| i];
            var x3 = x2;
            if i<sz-1 then{
                --x3;
            }
            if clickedx==i and clickedy>=0 then{
                draw_square(x1,yh,x3,rly,selectionincolor,selectioninalpha*alpha);
            }else{
                if selectedx==i and selectedy>=0 then{
                    draw_square(x1,yh,x3,rly,selectiononcolor,selectiononalpha*alpha);
                }else{
                    draw_square(x1,yh,x3,rly,normalcolor,normalalpha*alpha);
                }
            }
            x1 = x2;
        }
        /*
        if (cur_wat>-1 or cur_nwat>-1) and (selectedy!=-1 or clickedy!=-1) then{
            if clickedx!=-1 and clickedy!=-1 then{
                uiz_gridlist_drawsquareback_col(selectionincolor,selectioninalpha);
            }else{
                uiz_gridlist_drawsquareback_col(selectiononcolor,selectiononalpha);
            }
                if selectedx < ds_list_size(mainlist)-1 then{
                    draw_square(rx+cur_nwat,yh,rlx-scrollbarw,rly,normalcolor,normalalpha*alpha);//right of col
                }
                draw_square(rx,yh,rx+cur_wat-1,rly,normalcolor,normalalpha*alpha);//left of col
            } else{
                    draw_square(rx,yh,rlx-scrollbarw,rly,normalcolor,normalalpha*alpha);
                }
        */
    break;
}
