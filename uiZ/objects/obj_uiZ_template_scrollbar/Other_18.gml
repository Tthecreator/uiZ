squareHeight = uiz_getposy_self(scrollHeight,scrollHeightType);
scrollLines = squareHeight - height;//get the amount of lines we can scroll. This is the amount of total scrollable area minus the amount of visible area.
if scrollLines>0 then{//we can't enable the scrollbar if there isn't enough space to scroll trough
    doScroll = true;
    scrollbarX = rlx - uiz_getposx_self(scrollbarWidth,scrollbarWidthType);//the the x position of the scrollbar. We are placing the scrollbar on the right. The variable "rlx" refers to the right edge of the object.
}else{
    doScroll = false;
    scrollbarX = rlx;
}


