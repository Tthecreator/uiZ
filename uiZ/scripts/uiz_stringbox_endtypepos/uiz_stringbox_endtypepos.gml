function uiz_stringbox_endtypepos() {
	typepos=len;
	endc=len;
	for (var i=endc;i>=0;i--){
	if sw+string_width(string_hash_to_newline(string_copy(value,i,endc-i)))>width-margin*2 then{
	//sdbm(i,string_copy(value,i,endc-i),sw+string_width(string_copy(value,i,endc-i)))
	begc=i+1
	break;
	}}



}
