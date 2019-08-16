///uiz_stringbox_dis_get()
str_dis=uiz_gettext_contained_nodots(string_copy(str_real,str_dis_begin+1,str_real_size-str_dis_begin),iwidth)
str_dis_size=string_length(str_dis);
str_dis_width=string_width(str_dis);
str_dis_width_last=string_width(string_char_at(str_dis,str_dis_size));
str_dis_end=str_dis_begin+str_dis_size;
