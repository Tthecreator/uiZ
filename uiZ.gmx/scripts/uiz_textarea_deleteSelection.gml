if selectionMinLine=selectionMaxLine then{//one liner
var i = selectionMinLine;
textList[|i] = string_delete(textList[|i],selectionMinChar+1, selectionMaxChar-selectionMinChar);

}else{

//first line
textList[|selectionMinLine] = string_copy(textList[|selectionMinLine],1, selectionMinChar);

//last line
textList[|selectionMaxLine] = string_copy(textList[|selectionMaxLine],selectionMaxChar+1, string_length(textList[|selectionMaxLine]));

//middle lines
for(var i=selectionMinLine+1;i<selectionMaxLine;++i){
    ds_list_delete(textList,selectionMinLine+1);
}
/*
scrolllines=ds_list_size(textList)*fontHeight-iheight;
if doscroll and uiz_drawscrollbar_getvalue(scroll)>scrolllines then{
    uiz_drawscrollbar_setvalue(scroll,scrolllines);
    uiz_textarea_updateScrollPx();
}else if !doscroll and listFromPx!=0 then{
    uiz_drawscrollbar_setvalue(scroll,0);
    uiz_textarea_updateScrollPx();
}
*/

}

uiz_textarea_selectionToLeftCursor();
