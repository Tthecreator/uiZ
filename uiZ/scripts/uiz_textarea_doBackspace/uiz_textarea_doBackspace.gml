function uiz_textarea_doBackspace(argument0) {
	var lsz = ds_list_size(textList);
	if lsz==0 then exit;
	var lineSize = string_length(textList[| selection1Line]);

	var selLineAdd=0;
	if selection1Char==lineSize && argument0 then{//if we're at the end of the line and we want to do a delete
	//    sdbm("if we're at the end of the line and we want to do a delete");
	    if selection1Line+1<lsz then{
	        textList[| selection1Line+1] = string_copy(textList[| selection1Line+1], 2, string_length(textList[| selection1Line+1]))
	        selLineAdd=+1;
	    }
	}else{
	    if selection1Char==0 && !argument0 then{//if we're at the beginning of the line and we want to do a backspace
	//        sdbm("if we're at the beginning of the line and we want to do a backspace");
	        if selection1Line>=1 then{
	            if string_char_at(textList[| selection1Line],1)==chr($0A) then{
	                textList[| selection1Line]=""
	            }else{
					uiz_textare_doBackspace_removeLastLineLastChar();
	                if string_byte_at(textList[| selection1Line-1],string_byte_length(textList[| selection1Line-1])) == $0A then{
	                    //\n newline char removed by last uiz_textare_doBackspace_removeLastLineLastChar.
	                    if string_byte_at(textList[| selection1Line-1],string_byte_length(textList[| selection1Line-1])) == $0D then{
	                        uiz_textare_doBackspace_removeLastLineLastChar();//remove \r newline
	                    }
	                    //combine two lines
						
                    
	                }
	                //selLineAdd=-1;
					//sdbm("combining lines!",selection1Line,textList[| selection1Line-1], textList[| selection1Line])
	                selection1Char = string_length(textList[| selection1Line-1]);
	                textList[| selection1Line-1] += textList[| selection1Line]
	                textList[| selection1Line]=""
	                selection1Line--;
	            }
				
            
	        }
	    }else{
	        if selection1Char==0 && argument0 && string_char_at(textList[| selection1Line],1)==chr($0A) then{//we are pressing delete right before a newline on an otherwise empty line
	//            sdbm("we are pressing delete right before a newline on an otherwise empty line");
	            textList[| selection1Line]=""
	            selection1Char = 0;
	            ++selection1Line;
	        }else{
	//            sdbm("else")
	            textList[| selection1Line] = uiz_removeChar(textList[| selection1Line],selection1Char+argument0);
	            if argument0 == 0 then{
	                --selection1Char;
	                if selection1Line==0 then{
	                    selection1X = ix;
	                }
	            }
	        }
	    }
	}

	uiz_textarea_reworkAndFix(selLineAdd)




}
