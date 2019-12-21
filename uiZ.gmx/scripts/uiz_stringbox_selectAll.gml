//takes the current typepos and makes a selection till the end of the stringbox
//if typepos_real<str_real_size then{
if selpmin!=0 or selpmax!=str_real_size then{
    hasselection=true;
    //uiz_stringbox_disToEnd();
    //sel_str_beg=string_copy(str_real,1,typepos_real);
    //sel_str_mid=string_copy(str_real,typepos_real+1,str_dis_size);
    /*
    if(typepos_real>str_dis_begin){
    sel_str_beg=uiz_string_copy(str_real,str_dis_begin,typepos_real)
    sel_str_mid=uiz_string_copy(str_real,typepos_real+1,str_real_size);
    }else{
    sel_str_beg="";
    sel_str_mid=uiz_string_copy(str_real,str_dis_begin+1,str_real_size);
    }
    */
    
    selpmin=0;
    selpmax=str_real_size;
    selpos_dis_max_px=ix+str_dis_width;
    selpos_dis_max=str_dis_size;
    selpos_dis_min=0;
    selpos_dis_min_px=ix;
    sel_str_mid=sel_str_beg+sel_str_mid+sel_str_end;
    sel_str_end="";
    sel_str_end_m="";
    sel_str_beg="";
    sel_str_beg_m="";
    
    //sel_str_beg_m=sel_str_beg;
    //var selpos_real=uiz_stringbox_pos_real_from_dis(selpos_dis);
    if selpos_dis_min!=selpos_dis_max then{
    hasselection=true;
    }
    if typing = true then{
    uiz_typecursor_deregister();
    }
    uiz_stringbox_getselbounds();
    uiz_updater_FixViews_inside();
}

