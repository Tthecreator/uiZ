function uiz_colorbox_onUpdateStringboxRGB() {
	var argument_arr = array_create(argument_count);
	for (var i = 0; i < argument_count; i++) {
	    argument_arr[i] = argument[i];
	}
	var unused = argument1;
	if argument0 or argument2 then{
	    with(argument3[0]){
	        switch argument3[1]{
	            case 0://red
	                r = real(uiz_stringbox_getvalue(valred));
	            break;
	            case 1://green
	                g = real(uiz_stringbox_getvalue(valgreen));
	            break;
	            case 2://blue
	                b = real(uiz_stringbox_getvalue(valblue));
	            break;
	        }
	        c.color = make_color_rgb(r,g,b);
	        uiz_updater_FixViews_with(c);
	        uiz_colorbox_update_hsv();
	        uiz_huesquare_setcolor_hsv(uh,h,s,v);
	        uiz_colorbox_updateSliderColors(true,true,true,true);
	        uiz_colorbox_updateValues(true,true,true,true);
	        value = c.color;
	        uiz_updater_FixViews();
	    }
	}



}
