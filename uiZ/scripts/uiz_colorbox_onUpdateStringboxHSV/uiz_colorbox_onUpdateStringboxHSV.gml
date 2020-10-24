function uiz_colorbox_onUpdateStringboxHSV(argument0, argument1, argument2, argument3) {
	var unused = argument1;
	if argument0 or argument2 then{
	    with(argument3[0]){
	        switch argument3[1]{
	            case 0://hue
	                h = real(uiz_stringbox_getvalue(valh));
	            break;
	            case 1://saturation
	                s = real(uiz_stringbox_getvalue(vals));
	            break;
	            case 2://value
	                v = real(uiz_stringbox_getvalue(valv));
	            break;
	        }
	        c.color = make_color_hsv(h,s,v);
	        uiz_updater_FixViews_with(c);
	        uiz_colorbox_update_rgb();
	        uiz_huesquare_setcolor_hsv(uh,h,s,v);
	        if argument3[1]==2 then{
	            uiz_colorbox_updateSliderColors(true,true,true,true);
	            uiz_colorbox_updateValues(true,true,true,true);
	        }else{
	            uiz_colorbox_updateSliderColors(false,true,true,true);
	            uiz_colorbox_updateValues(false,true,true,true);
	        }
        
	        value = c.color;
	        uiz_updater_FixViews();
	    }
	}



}
