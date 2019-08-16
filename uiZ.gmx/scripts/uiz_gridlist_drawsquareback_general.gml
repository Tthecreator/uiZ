switch(selectionmode){
    case 1://single cell
        if cur_wat>-1 and (cur_hat>-1 or cur_nhat>-1) then{
                if clickedx!=-1 then{
                    uiz_gridlist_drawsquareback_cell(selectionincolor,selectioninalpha);
                }else{
                    uiz_gridlist_drawsquareback_cell(selectiononcolor,selectiononalpha);
                }
                }
        break;
    case 2://row
        if (cur_hat>-1 or cur_nhat>-1) then{
            if clickedy!=-1 then{
                uiz_gridlist_drawsquareback_row(selectionincolor,selectioninalpha);
            }else{
                uiz_gridlist_drawsquareback_row(selectiononcolor,selectiononalpha);
            }
            }
    break;
    case 3://column
        if (cur_wat>-1 or cur_nwat>-1) then{
            if clickedy!=-1 then{
                uiz_gridlist_drawsquareback_col(selectionincolor,selectioninalpha);
            }else{
                uiz_gridlist_drawsquareback_col(selectiononcolor,selectiononalpha);
            }
            }   
    break;
}
