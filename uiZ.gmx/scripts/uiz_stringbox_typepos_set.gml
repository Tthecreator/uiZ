///uiz_stringbox_typepos_set(pos_char,pos_px)
typepos_real=argument0;
uiz_stringbox_typepos_dis_from_real();
typepos_dis_px=argument1;
uiz_stringbox_typecursor_register();
uiz_stringbox_resetSelStrings();

while(typepos_dis<0 and str_dis!=""){
    uiz_stringbox_shiftleft();
}
while(typepos_real>str_dis_end and str_dis!=""){
    uiz_stringbox_shiftright();
}
