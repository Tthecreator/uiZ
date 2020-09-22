/*
//if live_call() return live_result
var lsz = ds_list_size(textList);
var ih=startOffset;
//sdbm("s",startList,lsz)
for(var i=startList;i<lsz;i+=0){    
    //sdbm("s",startList,lsz,i,handleList[|i]);
    var oldi = i;
    draw_set_color(c_blue)
    draw_text(rlx-70,ry+ih,handleList[|i]);
    draw_set_color(c_green)
    if handleList[|i]!=-1 and is_real(handleList[|i]) and handleList[|i]<uiz_xml_getTreeSize(usexml) then{
        draw_text(rlx-50,ry+ih,uiz_xml_getdebugstringtotal_one(usexml,handleList[|i]));
    }
    var nextPosition = nextItemList[|i];
    i = nextPosition;
    //sdbm("nextPos",i,lsz);
    if i<=0 or i<oldi or is_undefined(i) then{break;}
    ih+=fontHeight;
}

/* */
///drag item
//if live_call() return live_result
//sdbm("draggingItem",draggingItem,global.mousefrozen)
updateDragArea = false;
if draggingItem!=-1 then{
    if font>-1 then{draw_set_font(font)}        
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_color(textcolor);
    var srlx;
    if doscroll then{srlx=scrollBarX-rx;}else{srlx=width}
    var oldHierarchy = hierarchyLines;
    hierarchyLines = false;
    backselalpha*=backdragalpha
    //uiz_treelist_drawEntry(draggingItem,uiz_getmouse_y()-ry-draggingSnapY,uiz_getmouse_x()-draggingSnapX,uiz_getmouse_x()+srlx-draggingSnapX)
    uiz_treelist_drawEntry(draggingItem,uiz_getmouse_y()-ry-draggingSnapY,uiz_getmouse_x(),uiz_getmouse_x()+srlx)
    backselalpha/=backdragalpha
    hierarchyLines = oldHierarchy;
}

/* */
/*
draw_set_color(c_black);
draw_text(10,30,uiz_xml_getdebugstringtotal(usexml));
//*/
/*
draw_set_color(c_red);
draw_set_alpha(1);
draw_rectangle(rx,startOffset+(draggingItemRelativePos)*fontHeight,rlx,startOffset+(draggingItemRelativePos+1)*fontHeight,true)
//*/

/* */
/*  */
