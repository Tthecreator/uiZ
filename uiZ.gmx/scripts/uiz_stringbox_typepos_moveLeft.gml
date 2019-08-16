///moves the type selection on to the left
if typepos_real>0 then{
var charSize = string_width(string_char_at(str_real,typepos_real));
typepos_real--;
typepos_dis--;
typepos_dis_px-=charSize;
if hasselection then{
uiz_stringbox_calculateConnectionPoints();
}
uiz_stringbox_typer_remainInView();
uiz_stringbox_typecursor_register();
}
