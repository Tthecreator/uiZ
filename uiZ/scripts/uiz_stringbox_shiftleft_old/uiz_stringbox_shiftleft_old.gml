function uiz_stringbox_shiftleft_old() {
	begc=max(begc-1,1);
	for (var i=begc;i<len;i++){
	if sw+string_width(string_hash_to_newline(string_copy(value,begc,i-begc)))>width-margin*2 then{
	endc=i-1
	break;
	}
	}

	typepos=clamp(typepos,begc,endc)



}
