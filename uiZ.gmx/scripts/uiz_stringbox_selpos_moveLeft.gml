///moves the selection position to the left
if selpos_dis>0 || str_dis_begin>0 then{

var charAdd = string_char_at(str_dis,selpos_dis);
switch(sign(selpos_dis-typepos_dis)){
case -1: case 0:
sel_str_beg=string_copy(sel_str_beg,1,string_length(sel_str_beg)-1);
sel_str_mid=charAdd+sel_str_mid;
break;
case 1:
sel_str_end=charAdd+sel_str_end;
sel_str_mid=string_copy(sel_str_mid,1,string_length(sel_str_mid)-1);
sel_str_end_m=charAdd;
break;
}

var charSize = string_width(charAdd);
selpos_dis--;
selpos_dis_px-=charSize;
if str_dis_begin+selpos_dis=typepos_real then{
//uiz_stringbox_selection_disable();
}
uiz_stringbox_calculateConnectionPoints();
uiz_stringbox_selpos_remainInView();

}
