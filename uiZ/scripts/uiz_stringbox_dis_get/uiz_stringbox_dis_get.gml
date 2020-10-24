/// @description uiz_stringbox_dis_get()
function uiz_stringbox_dis_get() {
	str_dis=uiz_getText_contained_noDots(string_copy(str_real,str_dis_begin+1,str_real_size-str_dis_begin),floor(i_ilx-ix))
	str_dis_size=string_length(str_dis);
	str_dis_width=string_width(string_hash_to_newline(str_dis));
	str_dis_width_last=string_width(string_hash_to_newline(string_char_at(str_dis,str_dis_size)));
	str_dis_end=str_dis_begin+str_dis_size;



}
