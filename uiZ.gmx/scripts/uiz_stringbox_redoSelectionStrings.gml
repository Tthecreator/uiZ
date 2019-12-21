sel_str_beg_old=sel_str_beg;
sel_str_beg=string_copy(str_dis,1,selpos_dis_min)

if str_dis_size>selpos_dis_max then{
sel_str_end=string_copy(str_dis,selpos_dis_max+1,str_dis_size-selpos_dis_max);
}else{
sel_str_end=""
}
if str_dis_size>selpos_dis_min then{
    sel_str_mid=string_copy(str_dis,selpos_dis_min+1,selpos_dis_max-selpos_dis_min);
    uiz_stringbox_getselbounds();
}else{
    sel_str_mid=""
    selpos_dis_min_px_bound = ix + string_width(sel_str_beg);
    selpos_dis_max_px_bound = selpos_dis_min_px_bound;
}
