function uiz_textarea_getListTo(argument0) {
	var listFrom=argument0
	var listLen = ds_list_size(textList);
	if cntnly>=iy and cntnly<=ily then{
	var listTo = min(listLen,listFrom+iheight/fontHeight,(cntnly-iy-listFromPx)/fontHeight);
	}else{
	var listTo = min(listLen,listFrom+iheight/fontHeight);
	}
	return listTo;



}
