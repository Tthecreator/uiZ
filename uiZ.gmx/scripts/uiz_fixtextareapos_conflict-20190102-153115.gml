var t=argument0;
with(t){
var owidth = iwidth;
var oheight = iheight;
uiz_fix_Base()
scblwidth=uiz_getposx(scrollbarsize,scrollbarsizetype);
if font>-1 then{draw_set_font(font)};
fontHeight = string_height("{|}");
var listH = ds_list_size(textList)*fontHeight;
if owidth!=iwidth or (oheight!=iheight and (oheight>listH or iheight>listH)) then{
    uiz_textarea_rework(true);
    if doscroll=true then{
        var maxScrollSize = (ds_list_size(textList)*fontHeight-iheight)
        if maxScrollSize<listFromPx then{
            //we scrolled to far, so we need to automatically scroll back a little bit
            scroll = uiz_drawscrollbar_setvalue(scroll,maxScrollSize);
            listFromPx = maxScrollSize;
        }
    }else{
        listFromPx=0;
    }
}
}

