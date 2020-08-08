//setup object
text=uiz_c(obj_uiZ_text)
uiz_setparent(text,window)
text.posinframex=uiz_fill;
text.posinframey=uiz_fill;
uiz_text_setmultiline(text, true)
if clipboard_has_text() then{
    //text.value=clipboard_get_text()
    uiz_text_settext(text, clipboard_get_text());
}else{
    //text.value=""
    uiz_text_settext(text, "");
}
uiz_fixgeneralpos(text)
