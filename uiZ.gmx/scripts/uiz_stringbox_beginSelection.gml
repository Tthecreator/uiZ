//start an selection at the typepos
selpos_dis = typepos_dis;
selpos_dis_px = typepos_dis_px;
sel_str_beg=string_copy(str_dis,1,selpos_dis);
sel_str_mid="";
sel_str_end=string_copy(str_dis,selpos_dis+1,str_dis_size-selpos_dis);
