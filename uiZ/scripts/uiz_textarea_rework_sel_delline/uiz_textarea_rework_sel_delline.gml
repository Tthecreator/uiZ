function uiz_textarea_rework_sel_delline(argument0) {
	if selection1Line>=0 and argument0<=selection1Line then{//if a line is being deleted
	    if selection1Line==0 then{
	        selection1Char=0;
	    }else{
	        selection1Line--;
	    }
	}

	if selection2Line>=0 and argument0<=selection2Line then{//if a line is being deleted
	    if selection2Line==0 then{
	        selection2Char=0;
	    }else{
	        selection2Line--;
	    }
	}



}
