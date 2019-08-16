//setup object
text=uiz_c(obj_uiZ_textplane)
uiz_setparent(text,window)
text.posinframex=uiz_fill;
text.posinframey=uiz_fill;
if clipboard_has_text() then{text.value=clipboard_get_text()}else{text.value=""}
uiz_fixgeneralpos(text)
