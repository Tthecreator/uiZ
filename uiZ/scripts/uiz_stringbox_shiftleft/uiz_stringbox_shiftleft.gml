/// @description uiz_stringbox_shiftleft()
function uiz_stringbox_shiftleft() {
	//shifts the selection of the box 1 to the left.
	//returns if any trimming of the dis-view has happened.
	var trimmed = false;
	if str_dis_begin > 0 then {
	    var addchar = string_char_at(str_real, str_dis_begin);
	//    sdbm("shift left with", addchar, str_dis_begin);
	    var addchar_width = string_width(string_hash_to_newline(addchar));
	    str_dis_begin--;
	    str_dis_size++;
	    str_dis_width += addchar_width;
	    str_dis = addchar + str_dis;
	    //add char to the beginning of a selection
	    if hasselection = true then {
	        if selpmin <= str_dis_begin then {
	            sel_str_mid = addchar + sel_str_mid;
	        } else {
            
	            sel_str_beg = addchar + sel_str_beg;
	        }
	        selpos_dis_min++;
	        selpos_dis_min_px += addchar_width;
	        selpos_dis_max++;
	        selpos_dis_max_px += addchar_width;


	    }


	    var sel_beg_sz = string_length(sel_str_beg);
	    var sel_end_sz = string_length(sel_str_end);
	    while (str_dis_width > floor(i_ilx-ix)) {
	        trimmed = true;
	        var remchar = string_char_at(str_dis, str_dis_size)
	        var remchar_size = string_width(string_hash_to_newline(remchar));
	        str_dis_size--;
	        str_dis = string_copy(str_dis, 1, str_dis_size);
	        str_dis_width -= remchar_size;
	        str_dis_end--;
	        str_dis_width_last = remchar_size;



	        /*sel_beg_sz--;
	        if sel_beg_sz>0 then{
	        sel_str_beg=string_copy(sel_str_beg,1,sel_beg_sz);
	        }
	        */


	        //if hasselection = true then { //handle selection
	        /*
	        if selpmin > str_dis_begin then {
	            selpos_dis_min--;
	            selpos_dis_min_px -= remchar_size;
	            }
	            selpos_dis_max--;
	            selpos_dis_max_px -= remchar_size;
	            */
	            if sel_end_sz = 0 then {
	                //remove char from mid string
	                sel_str_mid = string_copy(sel_str_mid, 1, string_length(sel_str_mid) - 1);

	            } else {
	                sel_end_sz--
	                sel_str_end = string_copy(sel_str_end, 1, sel_end_sz);
	            }

	        //}
	    }
	    //if hasselection and sel_end_sz=0 then{

	    //}
	    typepos_dis++;
	    typepos_dis_px += addchar_width;
	    selpos_dis++;
	    selpos_dis_px += addchar_width;
	    uiz_stringbox_typecursor_register();
	    uiz_stringbox_getselbounds();
	    if typepos_dis > str_dis_size and !hasselection then {
	        typepos_dis = str_dis_size;
	        typepos_dis_px = ix + str_dis_width;
	//        if !hasselection then{
	            uiz_stringbox_typepos_real_from_dis();
	//        }
	    }

	    if selpos_dis > str_dis_size then {
	        selpos_dis = str_dis_size;
	        selpos_dis_px = ix + str_dis_width;
	    }

	    uiz_updater_FixViews_inside()
	}
	return trimmed;



}
