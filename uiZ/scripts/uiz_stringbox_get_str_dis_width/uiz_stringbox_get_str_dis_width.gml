function uiz_stringbox_get_str_dis_width() {
	str_dis_size=string_length(str_dis);
	str_dis_width=string_width(string_hash_to_newline(str_dis));
	str_dis_width_last=string_width(string_hash_to_newline(string_char_at(str_dis,str_dis_size)));



}
