/// @description uiz_colorbox_update_hsv()
function uiz_colorbox_update_hsv() {
	h=colour_get_hue(c.color);
	s=colour_get_saturation(c.color);
	v=colour_get_value(c.color);
	uiz_stringbox_setvalue_noupdate(valh,h);
	uiz_stringbox_setvalue_noupdate(vals,s);
	uiz_stringbox_setvalue_noupdate(valv,v);



}
