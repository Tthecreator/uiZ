/// @description uiz_textarea_addLinesFromString(str)
/// @param str
function uiz_textarea_addLinesFromString(argument0) {
	var val=argument0
	var len = string_length(val)
	var curWidth = 0;
	var curLine = "";
	var avWidth = iwidth;//available width
	for(var i=1;i<=len;i++){//loop over all characters
	    var c = string_char_at(val,i);//get current char
	    var w = string_width(string_hash_to_newline(c));//width of current char
    
	    if c=chr($0A) then{
	        ds_list_add(textList,curLine+c);//write old line
	        curLine = "";
	        curWidth = 0;
	        continue;
	    }
    
	    if w>=avWidth then{//if this single character doesn't fit on line on a whole line. 
	        if curLine!="" then{
	            ds_list_add(textList,curLine);//write old line
	        }
	        ds_list_add(textList,c);//write too wide character
	        curLine = "";
	        curWidth = 0;
	        continue;
	    }
    
	    if curWidth+w>avWidth then{//if this character doesn't fit on the line with the other characters.
	        //find last space
	        var curLen = string_length(curLine);
	        var foundSpace = false;
	        for(var e=curLen;e>1;e--){
	            if uiz_isSpaceChar(string_char_at(curLine,e)){//cut off string at this space character
	                ds_list_add(textList,string_copy(curLine,1,e));
	                curLine = string_copy(curLine,e+1,curLen-e)+c;//give characters after space to the next line
	                curWidth = string_width(string_hash_to_newline(curLine));
	                foundSpace=true;
	                break;
	            }
	        }
	        if !foundSpace then{
	        //no space found
	        ds_list_add(textList,curLine);
	        curLine = c;//next line starts with oversized character
	        curWidth = w;
	        }
	        continue;
	    }else{
	        curLine +=c;
	        curWidth +=w;
	    }
    
	    }
	    if curLine!="" then{//add last bit of string to a line
	            ds_list_add(textList,curLine);
	    }



}
