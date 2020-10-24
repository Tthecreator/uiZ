//if live_call() return live_result;
if uiz_cntn() then {
    //draw settings
    var srlx = rlx;
    if doscroll then{srlx=scrollBarX-1;}
    if font>-1 then{draw_set_font(font)}        
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_color(textcolor);
    
    if uiz_selfmarked then{
    
        //selfmarked draw
        if updateMouseAreas then{
            if is_real(currentSelectionPos) and currentSelectionPos >= 0 and currentSelectionList >= 0 then{
                //sdbm("update curpos",currentSelectionList);
                uiz_treelist_drawEntry(currentSelectionList,startOffset+(currentSelectionPos-startPos)*fontHeight,rx,srlx);
            }
            if is_real(lastSelectionPos) and lastSelectionPos!=currentSelectionPos and lastSelectionPos >= 0 and lastSelectionList >=0 then{
                //sdbm("update lastpos");
                uiz_treelist_drawEntry(lastSelectionList,startOffset+(lastSelectionPos-startPos)*fontHeight,rx,srlx);
            }
            updateMouseAreas = false;
        }
        
        if updateDragArea then{
            //sdbm("update dragarea",drawDraggingItem);
            uiz_treelist_drawEntry(drawDraggingItem,startOffset+(draggingItemRelativePos)*fontHeight,rx,srlx);
            updateDragArea = false;
        }
        
    }else{//default draw
        updateDragArea = false;
        updateMouseAreas = false;
        
        if uiz_xml_isempty(usexml) = 0 then {
            //sdbm("xml not empty!");
            var lsz = ds_list_size(textList);
            var ih=startOffset;
            
            for(var i=startList;i<lsz;i+=0){    
                var oldi = i;
                i = uiz_treelist_drawEntry(i,ih,rx,srlx);
                //sdbm("Just ran!, i = ",i," oldi = ",oldi);
                if i<=0 or i<oldi or is_undefined(i) then{break;}
                ih+=fontHeight;
            }
            
        }
        
    }
    //draw scrollbar
    if doscroll=true then{
        uiz_drawscrollbar_vertical_draw(scrollBarX,iy,ilx,ily,scrollbarsprite,scrollbarcolor,scrollbarbacktexmode,scroll,scrolllines)
    }
    uiz_containend()
}

