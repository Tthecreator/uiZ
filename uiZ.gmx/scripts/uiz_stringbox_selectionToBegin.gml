//takes the current typepos and makes a selection till the beginning of the stringbox
if typepos_real>0 then{
typepos_dis_px+=string_width(string_copy(str_real,1,str_dis_begin));
uiz_stringbox_disToHome();
//typepos_dis_px-=str_dis_width;
uiz_stringbox_typepos_dis_from_real();
selpmin=0;
selpmax=typepos_real;
selpos_dis_min_px=ix;
selpos_dis_max_px=typepos_dis_px;
selpos_dis_min=0;
selpos_dis_max=typepos_dis;
sel_str_mid=string_copy(str_real,1,typepos_real);
sel_str_end=string_copy(str_real,typepos_real+1,min(str_real_size-typepos_real+1,str_dis_end));
sel_str_beg="";
sel_str_beg_m="";
sel_str_end_m=string_copy(str_dis,typepos_dis+1,str_dis_size-typepos_dis+1);
var selpos_real=uiz_stringbox_pos_real_from_dis(selpos_dis);
if selpos_dis_min!=selpos_dis_max then{
hasselection=true;
}
uiz_stringbox_getselbounds();
uiz_updater_FixViews_inside();
//uiz_stringbox_fixselection();
}

