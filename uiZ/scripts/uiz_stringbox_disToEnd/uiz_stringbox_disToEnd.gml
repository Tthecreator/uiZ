/// @description makes sure that the last part of the stringbox is visible.
function uiz_stringbox_disToEnd() {
	if str_dis_end=str_real_size then{
	while(str_dis_begin>0 && (!uiz_stringbox_shiftleft())){}//loop until we can no further move

	if(str_dis_size<str_real_size){
	uiz_stringbox_shiftright();
	}
	}else{
	while(str_dis_end<str_real_size){
	uiz_stringbox_shiftright()
	}
	}



}
