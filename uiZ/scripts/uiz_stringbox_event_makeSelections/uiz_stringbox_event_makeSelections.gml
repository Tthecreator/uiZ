/// @description make selections
function uiz_stringbox_event_makeSelections() {
	if hasmouse = true {
	    if hasselection = false then {//check if no selection has been made
	    //set selection to typepos
	        selpos_dis = typepos_dis;
	        selpos_dis_px = typepos_dis_px;
	    }

    

	    var mx = uiz_getmouse_x();
	    var addchar="";//hold the amount of characters not selected anymore
	    var mouseinside=false;
	    sel_canMove_counter+=uiz_sc(mouseSelectionMovementSpeed);
	    if mx<ix then{
	    if sel_canMove_counter>=1 then{uiz_stringbox_shiftleft();sel_canMove_counter=0;}
	    }else{
	    if mx>i_ilx then{
	    if sel_canMove_counter>=1 then{uiz_stringbox_shiftright();sel_canMove_counter=0;}    
	    }else{
	    mouseinside=true;
	    }
	    }
    
	    var selpos_dis_old=selpos_dis;//remember old value for later checks
    
	    var m = 1; //m is the multiplier to allow the selection to go to the left or right
	    if uiz_getmouse_x() < selpos_dis_px then {
	        m = -1; //selecting goes to left
	    }
	    mx*=m;//prepare for further processing
	    //loop until all characters to be selected are selected:
	    while (selpos_dis*m<str_dis_size*(m+1)/2){//keep within string size bounds
	        var checkchar = string_char_at(str_dis, selpos_dis+(m+1)/2)
	        var chs = string_width(string_hash_to_newline(checkchar)) ;
	        if ((selpos_dis_px ) * m + chs / 2) < mx then {
	        //add character to selection
	            selpos_dis += m;
	            selpos_dis_px += chs*m;
	            addchar+=checkchar;
	            if selpos_dis=typepos_dis then{break;}//if selection has size 0
	        } else {
	            break; //end the loop
	        }
	    }
	    //add the addchar variable to the right side of the selection
	    if addchar!="" then{
	    var addchar_length = string_length(addchar)
	    if typepos_dis<selpos_dis or typepos_dis<selpos_dis_old then{//selection goes to the right of the typepos
	    if m=-1 then{//selection gets smaller
	    sel_str_end_m=""
	        //add addchar revers
	        for(var i=addchar_length;i>=1;i--){
	            sel_str_end_m+=string_char_at(addchar,i);
	        }
	        sel_str_end=sel_str_end_m+sel_str_end;
	        sel_str_mid=string_copy(sel_str_mid,1,string_length(sel_str_mid)-addchar_length);
	        }else{//selection gets bigger
	        sel_str_end=string_copy(sel_str_end,addchar_length+1,string_length(sel_str_end)-1)
	        sel_str_mid+=addchar
	        }
	    }else{
	    if typepos_dis>selpos_dis or typepos_dis>selpos_dis_old then{//selection goes to the left of typepos
	    if m=1 then{//selection gets smaller
	    //add addchar revers
	        sel_str_beg_m=addchar;
	        sel_str_beg+=addchar;
	        var midlen=string_length(sel_str_mid)
	        var midchars = midlen-addchar_length;//the new size of the mid string (could be negative)
	        sel_str_mid=string_copy(sel_str_mid,1+addchar_length,midchars);
	        if midchars<0 then{//midchars is a negative number, couldn't fit in str_mid:
	             var endsz=string_length(sel_str_end);
	             midchars=clamp(-midchars,0,endsz);
	            sel_str_end=string_copy(sel_str_mid,1+midchars,endsz-midchars)
	            sel_end_sz=string_length(sel_str_end);
	        }
	        }else{//selection gets bigger
	        //add addchar reverse
	        for(var i=1;i<=addchar_length;i++){
	            sel_str_mid=string_char_at(addchar,i)+sel_str_mid
	        }
	        sel_str_beg_m="";
	        sel_str_beg=string_copy(sel_str_beg,1,string_length(sel_str_beg)-addchar_length);
	        }
	        }
	    }
	    }
	//calculate the end points in the right order.
	uiz_stringbox_calculateConnectionPoints()

	}



}
