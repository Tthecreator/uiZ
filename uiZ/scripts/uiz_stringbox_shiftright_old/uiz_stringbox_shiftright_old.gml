function uiz_stringbox_shiftright_old() {
	endc=min(endc+1,len);
	//get new beg
	for (var i=endc;i>=0;i--){
	if sw+string_width(string_hash_to_newline(string_copy(value,i,endc-i)))>width-margin*2 then{
	begc=i+1
	break;
	}
	}





}
