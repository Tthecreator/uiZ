//uiz_textarea_FixView_selection(downward)
if doscroll=true then{
var scrbx = ilx-scblwidth;
}else{
var scrbx = ilx;
}
var lhf = clamp(iy+(fontHeight*selectionMaxLine)-listFromPx,iy,ily);
var lhl = lhf + fontHeight;
if lhl>ily then{//if outside bounds on bottom
    lhf = max(iy,ily - fontHeight);
    lhl = ily;
}else if lhf<iy then{
    lhl = min(ily, iy + fontHeight);
    lhf = iy;
}

var fhf = clamp(iy+(fontHeight*selectionMinLine)-listFromPx,iy,ily);
var fhl = fhf + fontHeight;
if fhl>ily then{//if outside bounds on bottom
    fhf = max(iy,ily - fontHeight);
    fhl = ily;
}else if fhf<iy then{
    fhl = min(ily, iy + fontHeight);
    fhf = iy;
}

if selectionMinLine==selectionMaxLine then{//single line selection

    
    /*if argument0 then{
        uiz_updater_FixViews_area(selectionMinX,fhf,scrbx,fhl);
        uiz_updater_FixViews_area(ix,fhl,scrbx,ily);
    }else{*/
        uiz_updater_FixViews_area(selectionMinX,fhf,selectionMaxX,fhl);
    //}
}else{//multiline selection

    uiz_updater_FixViews_area(selectionMinX,fhf,scrbx,fhl);//first line
    
    if argument0 then{
        uiz_updater_FixViews_area(ix,fhl,scrbx,ily);
    }else{
        if (selectionMaxLine-selectionMinLine)>1 then{//there are more than 2 lines selection
            uiz_updater_FixViews_area(ix,fhl,scrbx,lhf);//first line
        }
        
        uiz_updater_FixViews_area(ix,lhf,selectionMaxX,lhl);//last line
    }
}

